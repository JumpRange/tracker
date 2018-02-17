module.exports = {
    name: "Love",
    cmd: 'love',
    cwd: '{PROJECT_PATH}',
    args: ['.'],

    targets: {
        Production: {
            cmd: './build.sh',
            cwd: '{PROJECT_PATH}',
        }
    }
}
