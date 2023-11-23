const bcrypt = require('bcrypt');

const saltRounds = 12;

async function hash(string) {
    return bcrypt
        .genSalt(saltRounds)
        .then(salt => {
            return bcrypt.hash(string, salt)
        });
}

function verifyHash(string, hash) {
    return bcrypt.compare(string, hash);
}

module.exports = { hash, verifyHash };
