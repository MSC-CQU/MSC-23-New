document.getElementById('simpleBtn').addEventListener('click',()=>{
    document.getElementById('display-text').innerHTML=`
    1.先介绍以下自己吧<br>
    2.可以简单介绍下你为什么想来吗？<br>
    3.如果你对编程很感兴趣，不妨读一读这篇文章${"<a href='https://codedocs.org/what-is/history-of-programming-languages'>编程语言的历史</a>"}
    `
});
document.getElementById('aggressiveBtn').addEventListener('click',()=>{
    document.getElementById('display-text').innerHTML=`
    1.先写个冒泡排序吧<br>
    2.很简单？拿来做做这个题${"<a href='https://www.luogu.com.cn/problem/P1216'>数字三角形</a>"}<br>
    3.这都难不倒你的话，那恭喜你已经很强了，快点来吧
    `
})
document.getElementById('selfBtn').addEventListener('click',()=>{
    document.getElementById('display-text').innerHTML=`
    敢挑战一下自己吗？<br>
    1.经典贪吃蛇<br>
    2.2048<br>
    3.俄罗斯方块<br>
    这三个题目对你来说有挑战性吗
    `
})