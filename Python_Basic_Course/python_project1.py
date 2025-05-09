# 1- Bir listeyi düzleştiren (flatten) fonksiyon yazın. Elemanları birden çok katmanlı listelerden ([[3],2] gibi) oluşabileceği gibi, 
# non-scalar verilerden de oluşabilir. Örnek olarak:
# input: [[1,'a',['cat'],2],[[[3]],'dog'],4,5]
# output: [1,'a','cat',2,3,'dog',4,5]

# 2- Verilen listenin içindeki elemanları tersine döndüren bir fonksiyon yazın. Eğer listenin içindeki elemanlar da 
# liste içeriyorsa onların elemanlarını da tersine döndürün. Örnek olarak:
# input: [[1, 2], [3, 4], [5, 6, 7]]
# output: [[[7, 6, 5], [4, 3], [2, 1]]

def flatten(lst):
    flat_list = []
    for i in lst:
        if isinstance(i, list):
            flat_list.extend(flatten(i))
        else:
            flat_list.append(i)
    return flat_list

def reverse (lst):
    
    for i in range(len(lst)):
        if type(lst[i]) == type([]):
            lst[i] = lst[i][::-1]
            reverse(lst[i])
    
    return (lst[::-1])

def main():
    lst = [[1, 2], [3, 4], [5, 6, 7]]
    print("Flattened list:", flatten(lst))
    print("Reversed list:", reverse(lst))

if __name__ == '__main__':
    main()
