####自我介绍、对编程语言理解、冒泡排序

​	我是段佳嵩，去年曾加入mscT&A，但是当时学的内容和代码毫不沾边，再加上当时对cs技术不了解，而且经常有神秘的课程安排占用社团活动等等，然后就基本没咋参与社团活动，久而久之，就不咋看群了，最近才发现群里果然是高朋满座，说话也好听。今年辅修计算机，而且主修的课里面也有一些相关的内容（数据结构、数电等等，详询培养方案）。于是今年不仅常常接触到代码和技术相关的内容，而且感觉代码和算法写起来很有意思。所以又有了加入相关社群的想法，准备再从msc开始加入一下。

​	还没来得及看参考书目，我胡言乱语几句：我对编程语言的理解就是一种操作状态机的命令。最原始的编程语言就是改变内存，让机器从一个状态变成另一个状态，这另一个状态对输入状态又有另外独特的响应机制，这些最终会对应一个输出。利用人造的编程语言操作它们的改变，最终得出一个想要的结果，这就是编程语言的作用。通俗一点就是说编程语言实现人想做的事情，从这个角度来看，用自然语言实现编程应该是最好的。

####题目：冒泡排序

```python
def bubblesort(ls):
    for i in range(len(ls)):
        for j in range(len(ls) - i):
            a = ls[j]
            if a != ls[-1]:
                b = ls[j+1]
                if a > b:
                    ls[j] = b
                    ls[j+1] = a
    return ls
x = bubblesort(eval(input()))
print(x)
```

####题目：最大食物链

```python3
def main():
    t = input().split(' ')
    bionums, relas = (int(t[0]), int(t[1]))
    chainmap = {}#邻接表
    frombioset = set()
    termi = set()#食物链终止处
    foot = set()#最底端的食物
    #输入处理
    for x in range(relas):
        t = input().split(' ')
        frombio, tobio = (int(t[0]), int(t[1]))
        if frombio not in frombioset:
            frombioset.add(frombio)
            chainmap[frombio] = [tobio]
        else:
            chainmap[frombio].append(tobio)
        termi.add(tobio)
        foot.add(frombio)
    #初始化值
    termi_ = termi - foot
    foot_ = foot - termi
    foot = foot_
    termi = termi_
    for term in termi:
        chainmap[term] = None
    rec = {}
    #搜索算法
    def getV(node_,adl,rec):#记忆化递归函数在图上深度优先遍历节点
        if node_ in tuple(rec.keys()):
            return rec[node_]#找到遍历过的节点了
        if not adl[node_]:
            return 1#找到终点了,+1
        count = 0#啥也不是
        for i in adl[node_]:#这时候开始遍历它的邻接节点
            countad = getV(i,adl,rec)
            rec[i] = countad
            count += countad
        return count
    ct = 0
    for i in foot:
        ct += getV(i,chainmap,rec)
    print(ct % 80112002)#为了在OJ平台上测试加了这一行
main()
```