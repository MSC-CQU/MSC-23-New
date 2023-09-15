#align(center)[技术部纳新模拟]
@picc 请先看看兔头
#figure(
    image("./纳新图/兔头.jpg",height: 40%),
    caption: [
        关注月之美兔谢谢喵
    ],
    numbering: "1",
)<picc>

== 基础题
#show link:underline

#block(
    fill: gray,
    width: 100%,
    inset: 5pt,
    outset: 5pt,
    radius: 4pt
)[
    + 先自我介绍一下吧(性别(optional),爱好,对社团的期待)
    + 对编程语言的理解(有参考书目)
    + 用任意语言写一个冒泡排序吧(也可以使用typst内置脚本)
]
#block(
    fill: yellow,
    width: 100%,
    inset: 5pt,
    outset: 3pt,
    radius: 3pt,
)[
    #link("./纳新图/history.pdf")[
        参考文献：编程语言的历史
    ]
]
== 上难度的题
#show link:underline
#block(
    fill: green,
    width: 100%,
    inset: 5pt,
    outset: 3pt,
    radius: 3pt,
)[
    #set enum(numbering: "1.a)")
    + 使用任意语言制作一款小游戏，以下是选项
        + 经典贪吃蛇
        + 2048
        + 俄罗斯方块
        + flappy bird
    + #link("https://www.luogu.com.cn/training/211")[学习一下动态规划]，然后来做出以下题目中的一个,不限制语言，要求步骤清晰，每一个函数都写注释表明作用
        + #link("https://www.luogu.com.cn/problem/P1216")[数字三角形]
        + #link("https://www.luogu.com.cn/problem/P4017")[最大食物链计数]
        + #link("https://www.luogu.com.cn/problem/P1049")[装箱问题]
]
#block(
    fill: yellow,
    width: 100%,
    inset: 5pt,
    outset: 3pt,
    radius: 3pt,
)[
    题目均不做强制要求
]
== 提交要求
#block(
    fill: gray,
    width: 100%,
    inset: 5pt,
    outset: 5pt,
    radius: 4pt
)[
    #link("https://github.com/MSC-CQU/MSC-23-New")[github上pull request]
    或者发到邮箱sgj_unicoder@qq.com
]
