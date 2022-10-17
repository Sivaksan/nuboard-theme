module.exports = {
    content: [
        './_includes/**/*.html',
        './_layouts/**/*.html',
        './_posts/*.md',
        './*.md',
        './*.html',
    ],
    theme: {
        extend: {
            colors: {
                clifford: '#da373d',
                c_red: '#ce6969',
                c_blue: '#3b82f6',
                c_purple: '#3e2c40',
            }
        }
    },
    Plugins: [
        require('@tailwindcss/typography')({
            class: 'blogpostcontent',
        }),
    ],
}
