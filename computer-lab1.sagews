︠c682b30e-e9be-4f50-8f4b-be6a13998948︠
# Example 1.1.4 some subsets
A = Set([3,5,8])
B = Set([5,8,3,2,6])

A.issubset(B)
sub = subsets(A)
print list(sub)

sub1 = subsets(B)
print list(sub1)
︡c0b65352-834a-41ee-8e4c-c793a66f74c1︡{"stdout":"True\n"}︡{"stdout":"[[], [8], [3], [8, 3], [5], [8, 5], [3, 5], [8, 3, 5]]\n"}︡{"stdout":"[[], [8], [2], [8, 2], [3], [8, 3], [2, 3], [8, 2, 3], [5], [8, 5], [2, 5], [8, 2, 5], [3, 5], [8, 3, 5], [2, 3, 5], [8, 2, 3, 5], [6], [8, 6], [2, 6], [8, 2, 6], [3, 6], [8, 3, 6], [2, 3, 6], [8, 2, 3, 6], [5, 6], [8, 5, 6], [2, 5, 6], [8, 2, 5, 6], [3, 5, 6], [8, 3, 5, 6], [2, 3, 5, 6], [8, 2, 3, 5, 6]]\n"}︡{"done":true}
︠117cfa33-4d90-4f1d-ba1e-422ac8aa3b23︠
S = Set([3,5,8])
T = Set([5,3,8])

A.issubset(B)
B.issubset(A)
︡03e8dee8-a35a-4b1d-857a-7d7851cafe7e︡{"stdout":"True\n"}︡{"stdout":"False\n"}︡{"done":true}
︠38d41cc9-4999-4bb5-8e48-fe97acbe8136︠
# Example 1.1.6 set equality
A = Set([1,5,3,5])
B = Set([1,5,3])

A == B
︡3c01d66d-e4cd-43f5-b8a8-8b82e870b1e9︡{"stdout":"True\n"}︡{"done":true}
︠23f83b95-0914-446f-b90b-b0e6c65867d4︠
# Example 1.2.2 Intersection
A = Set([1,3,8])
B = Set([-9,22,3])

A & B
︡e3f92a84-a3ed-4dd4-b4c3-2fba04d88efe︡{"stdout":"{3}\n"}︡{"done":true}
︠07d4edd6-00b6-4a06-94b8-3726b93bfdd9︠
x, y = var('x, y')
A = Set(solve([x + y ==7, x-y == 3], x, y))
B = Set(solve([y == 3+x, x + y ==7], x, y))

A.intersection(B)

︡704e4d03-df89-48b0-abde-e4935986de94︡{"stdout":"Set-theoretic intersection of Set of elements of [[x == 5, y == 2]] and Set of elements of [[x == 5, y == 2]]\n"}︡{"done":true}
︠a56efa8d-7822-4b4f-b797-ad91227a5766︠
X = Set(QQ)
Y = Set(ZZ)
X & Y


︡f93ae854-b240-4eb6-801f-a64a06a942eb︡{"stdout":"Set-theoretic intersection of Set of elements of Rational Field and Set of elements of Integer Ring\n"}︡{"done":true}
︠e531009d-0a61-41eb-b005-0d2f75155148︠
A = Set([3,5,9])
B = Set([-5,8])
A & B
︡4925988c-778a-438d-b85e-56739a234f15︡{"stdout":"{}\n"}︡{"done":true}
︠a778f831-8be2-4328-b4cc-f71dc6a70427︠
# Example 1.2.5 Union
A = Set([2,5,8])
B = Set([7,5,22])

A | B
A |Set()
︡d26370ab-60ae-432a-9c16-c69db6feba59︡{"stdout":"{8, 2, 5, 22, 7}\n"}︡{"stdout":"{8, 2, 5}\n"}︡{"done":true}
︠66ea901b-15e9-4af9-b6a8-e7b9f7e8bca4︠
X = Set(QQ)
Y = Set(ZZ)
X | Y
︡dfbb5874-a81c-4395-b411-6dac4d33089e︡{"stdout":"Set-theoretic union of Set of elements of Rational Field and Set of elements of Integer Ring\n"}︡{"done":true}
︠71726c8f-6a45-41c4-978f-8ba313beabcb︠
# Example 1.2.12 Complements
U = Set([1,2,3,4,5,6,7,8,9,10])
A = Set([2,4,6,8,10])

A.difference(U) # or A - U
U.difference(A) # or U -A


︡23b93274-4f95-45c5-9ddb-64d79e94bcd6︡{"stdout":"{}\n"}︡{"stdout":"{7, 1, 3, 5, 9}\n"}︡{"done":true}
︠326e8b16-f65e-464e-8298-45a8e8735554︠
#Example 1.2.16 Symmetric Difference

A = Set([1,3,8])
B = Set([2,4,8])

A.symmetric_difference(B)
B.symmetric_difference(A)

︡0b1be7b4-8c08-49e9-b6d0-81330d3af49c︡{"stdout":"{1, 2, 3, 4}\n"}︡{"stdout":"{1, 2, 3, 4}\n"}︡{"done":true}
︠588eb6aa-a27f-4684-a3cb-7f4dd29bec6c︠
# 1.2.3
L1 = [3,6,9,0,3]
L2 = [9,6,3,0,9]
[L1==L2, Set(L1)==Set(L2) ]
︡79a0f06f-8a11-4388-829c-24fa262abbe8︡{"stdout":"[False, True]\n"}︡{"done":true}
︠e9b942b9-4b36-4c10-b760-9ff3c1207b8e︠
# SageMath Note: Sets
A=Set(srange(5,50,5))
B=Set(srange(6,50,6))
[A,B]

︡8a3e3126-2a42-4d15-ba79-75f3cd6526f1︡{"stdout":"[{35, 5, 40, 10, 45, 15, 20, 25, 30}, {36, 6, 42, 12, 48, 18, 24, 30}]\n"}︡{"done":true}
︠fd51110d-207b-407c-9b05-b92b8872eb59︠
[10 in A, 10 in B]
︡516c5340-496a-41d7-8f0c-b13ba58a791d︡{"stdout":"[True, False]\n"}︡{"done":true}
︠12bf6c61-e743-4f83-bcb1-d25c2213230b︠
A & B
︡8ff1ba73-7659-42e6-bde2-8b558f523962︡{"stdout":"{30}\n"}︡{"done":true}
︠158cce8e-2657-4994-a0a3-bdf520055ee6︠
[A.symmetric_difference(B),A.difference(B),B.difference(A)]
︡326e5d81-9484-4d34-b825-81a453a145d1︡{"stdout":"[{35, 36, 5, 6, 40, 42, 12, 45, 15, 48, 18, 20, 24, 25, 10}, {35, 5, 40, 10, 45, 15, 20, 25}, {48, 18, 36, 6, 24, 42, 12}]\n"}︡{"done":true}
︠9cdca3d6-2196-4fec-b35f-ed1f9d78c8ac︠
# Example 1.3.2
A = Set([1,2,3])
B = Set([4,5])
P = cartesian_product([A, B])
P1 = cartesian_product([A, A])
print list(P)
print list(P1)
︡1da6afa5-2043-462b-8940-41ff81b01cbe︡{"stdout":"[(1, 4), (1, 5), (2, 4), (2, 5), (3, 4), (3, 5)]\n"}︡{"stdout":"[(1, 1), (1, 2), (1, 3), (2, 1), (2, 2), (2, 3), (3, 1), (3, 2), (3, 3)]\n"}︡{"done":true}
︠2b21a811-af66-4f95-b8d2-adfbc272277e︠
A.cardinality()
B.cardinality()
P.cardinality()
P1.cardinality()
︡b4d082ac-0743-417b-be12-df548300154f︡{"stdout":"3\n"}︡{"stdout":"2\n"}︡{"stdout":"6\n"}︡{"stdout":"9\n"}︡{"done":true}
︠b77c10fc-6d6b-48bf-8cae-c9675f22e98d︠
# Example 1.3.4
A = Set([1,2])
list(subsets(A))

︡4d78dc85-292a-4c93-866f-0044d5197d36︡{"stdout":"[[], [1], [2], [1, 2]]\n"}︡{"done":true}
︠ac04784c-a34e-4c2b-a367-2be0e0c2e161︠
A = Set([1])
list(subsets(A))
︡ef881d4f-508c-4291-8768-9fc6febca7f2︡{"stdout":"[[], [1]]\n"}︡{"done":true}
︠0e038c08-92a3-4c1e-840d-783af7004b64︠
A = Set([])
list(subsets(A))
︡425f9628-b54f-42c7-827f-f9ed29f5b732︡{"stdout":"[[]]\n"}︡{"done":true}
︠45f142e5-5f2a-46b6-a604-06d19acc3578︠
# 1.3.3 SageMath Note: Cartesian Products and Power Sets

A=Set([0,1,2])
B=Set(['a','b'])
P=cartesian_product([A,B]);P
︡83468259-0a84-4949-b0f8-a91fe3de67a8︡{"stdout":"The Cartesian product of ({0, 1, 2}, {'a', 'b'})\n"}︡{"done":true}
︠b63243d3-e675-4c99-9fc9-82158e8b3658︠
P.cardinality()
︡4a94b095-7cad-41b0-9adb-a275caf71efa︡{"stdout":"6\n"}︡{"done":true}
︠d43e7fe8-b6b9-4b93-8355-ca035eb7be7b︠
U=Set([0,1,2,3])
subsets(U)
︡1e9587ee-1508-4494-a323-f84976c9c142︡{"stdout":"<generator object powerset at 0x7fc5a705c550>\n"}︡{"done":true}
︠01b511ad-01da-4f5d-a151-3d9a3e83c311︠
for a in subsets(U):
    print(str(a)+ " has " +str(len(a))+" elements.")
︡3709cddd-354b-4545-a3e3-91b149705d41︡{"stdout":"[] has 0 elements.\n[0] has 1 elements.\n[1] has 1 elements.\n[0, 1] has 2 elements.\n[2] has 1 elements.\n[0, 2] has 2 elements.\n[1, 2] has 2 elements.\n[0, 1, 2] has 3 elements.\n[3] has 1 elements.\n[0, 3] has 2 elements.\n[1, 3] has 2 elements.\n[0, 1, 3] has 3 elements.\n[2, 3] has 2 elements.\n[0, 2, 3] has 3 elements.\n[1, 2, 3] has 3 elements.\n[0, 1, 2, 3] has 4 elements.\n"}︡{"done":true}
︠784b01cf-e221-4778-b43a-75d53c06656a︠
# Example 1.4.1
def binary_rep(n):
    if n==0:
        return '0'
    else:
        k=abs(n)
        s=''
        while k>0:
            s=str(k%2)+s
            k=k//2
        if n < 0:
            s='-'+s
        return s
binary_rep(41)
binary_rep(20)
binary_rep(10)
binary_rep(5)
binary_rep(2)
binary_rep(1)
︡867de0e0-5e31-49c9-9053-c346bd1632ea︡{"stdout":"'101001'\n"}︡{"stdout":"'10100'\n"}︡{"stdout":"'1010'\n"}︡{"stdout":"'101'\n"}︡{"stdout":"'10'\n"}︡{"stdout":"'1'\n"}︡{"done":true}
︠fb8244c8-e79c-443e-95da-3849ac1e3457︠
# Example 1.5.1 Finite series
k, n = var('k,n')
k.sum(k, 1, n).factor()
︡18f78ab7-16b2-474f-81ce-3f9503d89263︡{"stdout":"1/2*(n + 1)*n\n"}︡{"done":true}
︠faaccc31-fae6-4828-903e-96e96e4c08b7︠
k, n = var('k,n')
n = 3
a = (2+3*k) # a*i
a.sum(k, 1, n).factor()
︡1f31753b-6eaa-496f-8aa9-50e392d6d93e︡{"stdout":"2^3 * 3\n"}︡{"done":true}
︠58fbceb5-e64d-4bad-8b2f-89fd4ae3e91a︠
# Example 1.5.1 More Finite Series
i, n = var('i,n')
n = 4
x = i^2
x = x.sum(i, 1, n).factor()
print x
︡7b274672-7fa6-467f-8ca6-4391f0b7f024︡{"stdout":"2 * 3 * 5\n"}︡{"done":true}
︠e9c5b6d9-5323-44bd-b996-bb1620c733ec︠
i, n = var('i, n')
n = 5
x = (2*i-1)
x = x.sum(i, 1, n).factor()
print x
︡d147ec17-c47f-4188-95c0-638392f76078︡{"stdout":"5^2\n"}︡{"done":true}
︠30a494b2-1c4d-4db3-b087-66931d022384︠
# Example 2.1.1

A = Set(["sandwich1","sandwich2","sandwich3","sandwich4","sandwich5" ]) #number of sandwiches
B = Set(["beverage1","beverage2","beverage3"]) # number of beverages
x = var('x')

P = cartesian_product([A, B])
print list(P)
print

print P.cardinality(), "possible lunches"


︡2b73f9f7-e38c-4551-bad0-6a99a048c22f︡{"stdout":"[('sandwich1', 'beverage1'), ('sandwich1', 'beverage2'), ('sandwich1', 'beverage3'), ('sandwich2', 'beverage1'), ('sandwich2', 'beverage2'), ('sandwich2', 'beverage3'), ('sandwich3', 'beverage1'), ('sandwich3', 'beverage2'), ('sandwich3', 'beverage3'), ('sandwich4', 'beverage1'), ('sandwich4', 'beverage2'), ('sandwich4', 'beverage3'), ('sandwich5', 'beverage1'), ('sandwich5', 'beverage2'), ('sandwich5', 'beverage3')]\n"}︡{"stdout":"\n"}︡{"stdout":"15 possible lunches\n"}︡{"done":true}
︠aa217aa9-828a-465e-80a7-215b2566104c︠
# Example 2.1.4
A = Set([1, 2]) # 2 possible answers
B = Set([1,2,3,4,5,6,7,8,9, 10]) # number of questions

a = A.cardinality()
b = B.cardinality()
a^b
︡7b1edc2e-5bf8-47a6-af80-4de1850f6464︡{"stdout":"1024\n"}︡{"done":true}
︠3ef1acec-1daf-424d-93a8-8f3bad12a09d︠
# Example 2.1.6
A = Set([1, 2]) # 2 possible answers
B = Set([1,2,3,4]) # number of questions

C = Set([1,2,3]) #3 possible answers
D = Set([1,2,3,4,5]) # 5 questions

a = A.cardinality()
b = B.cardinality()

c = C.cardinality()
d = D.cardinality()

(b^a)*(d^c) #total ways of answering the questionnaire
︡2b3d845f-95d1-4ccc-b1f7-58da56b180ed︡{"stdout":"2000\n"}︡{"done":true}
︠c160d738-55e6-49c1-90c1-b4b54628d394︠
# Example 2.2.1
A = Set([1,2,3])
n = A.cardinality()
n
factorial(n)
︡027b1243-eed3-434b-972d-ab368a3690e2︡{"stdout":"3\n"}︡{"stdout":"6\n"}︡{"done":true}
︠4838fa94-c348-4185-8c82-883ba0ec89fd︠
# Example 2.2.3
n = 5
factorial(n)
︡ed268a61-a2e7-4981-9e4e-ab6c3c98cb9f︡{"stdout":"120\n"}︡{"done":true}
︠9f90837b-5ef8-4c14-8c15-6eafb879d5c6︠
# Example 2.2.4
n = 25
factorial(n)
︡3638ebd7-7992-4876-982d-9b28ef95ad80︡{"stdout":"15511210043330985984000000\n"}︡{"done":true}
︠12c60c50-072e-4b5c-b682-ce67cfd43d7a︠
# Example 2.2.6
n = 25
k = 3
f =(factorial(n))
f1=(factorial(n-k))
f/f1
︡c769df77-1a16-4759-adf9-d42cd3192918︡{"stdout":"13800\n"}︡{"done":true}
︠66152f6d-96b3-4e2f-a704-196bdbf0d039︠
# Example 2.2.9
#Club = Set(["member1","member2","member3","member4","member5","member6","member7","member8"],3)
#Elects = Set(["president", "vice-president", "treasurer"])
A =Arrangements(["member1","member2","member3","member4","member5","member6","member7","member8"],3)
A.cardinality()



︡b3a32155-52cc-46b6-8d3f-dbf4900f1088︡{"stdout":"336\n"}︡{"done":true}
︠e5eea536-f8cf-4496-93fc-0b6502b816e1︠
# Example 2.2.10

A = Set(["course1","course2","course3","course4","course5"])
B = Set([1,2,3,4,5])

n = A.cardinality()
k = B.cardinality()

f =(factorial(n))
f1=(factorial(n-k))
f/f1                #permutation formula n!/(n-k)!
︡7a02903b-72c6-4db6-b204-d1926aa02dca︡{"stdout":"120\n"}︡{"done":true}
︠42c1ed1d-f103-46eb-9923-3d9c772cfb54︠
# Example 2.2.11
A = Set([1,2,3,4,5])
B = Set([1,2,3])

n = A.cardinality()
k = B.cardinality()

f =(factorial(n))
f1=(factorial(n-k))
f/f1
︡e4c60ae2-f45a-4b5a-a3e3-6997b3ad6047︡{"stdout":"60\n"}︡{"done":true}
︠cba6f16c-0bc7-45be-bc3e-60a2d95b41cb︠
# permutation formula does not apply, used rule of product instead
A = Set([1,2,3,4,5])
B = Set([1,2,3])

a = A.cardinality()
b = B.cardinality()
(a^b)
︡5d58c7ff-d263-4414-837e-649d9a249f55︡{"stdout":"125\n"}︡{"done":true}
︠63aa8fe5-827c-442e-a704-885b95ec6388︠
# Example 2.3.2
A = Set(["a","b","c","d"])

x = SetPartition(A)
x
y = SetPartitions(["a", "b", "c", "d"], 2).random_element()
y
︡09dd72be-139d-42e1-8916-2455074b41b1︡{"stdout":"{{'a'}, {'b'}, {'c'}, {'d'}}\n"}︡{"stdout":"{{'a', 'b', 'c'}, {'d'}}\n"}︡{"done":true}
︠d970ba40-deb7-412d-a955-6f371b781529s︠
#Example 2.4.5
C = Combinations(range(5),3)
C
C.list()
print
C.cardinality()
︡d4bcd0ab-259d-4c18-af38-398919d8c3fd︡{"stdout":"Combinations of [0, 1, 2, 3, 4] of length 3\n"}︡{"stdout":"[[0, 1, 2], [0, 1, 3], [0, 1, 4], [0, 2, 3], [0, 2, 4], [0, 3, 4], [1, 2, 3], [1, 2, 4], [1, 3, 4], [2, 3, 4]]\n"}︡{"stdout":"\n"}︡{"stdout":"10\n"}︡{"done":true}
︠42c75026-8abd-49b0-be85-7538a8353076︠
# Example 2.4.6
C = Combinations(range(5),5)
C1 = Combinations(range(5),4)
C2 = Combinations(range(5),3)
C3 = Combinations(range(5),2)
C4 = Combinations(range(5),1)
C5 = Combinations(range(5),0)

c = C.cardinality()
c1 = C1.cardinality()
c2 = C2.cardinality()
c3 = C3.cardinality()
c4 = C4.cardinality()
c5 = C5.cardinality()

c+c1+c2+c3+c4+c5


︡63b1b1d3-b5fe-400b-9416-152236c11604︡{"stdout":"32\n"}︡{"done":true}
︠dd455cf1-789b-45b4-887e-7d90a932793cs︠
# Example 2.4.7
C = Combinations(range(25),5)
C.cardinality()

︡5365115b-1ff3-4888-aa96-917815e0e13b︡{"stdout":"53130\n"}︡{"done":true}
︠ba12ff2a-a4ae-4eef-b3ca-68b760cbdcd6s︠
C = Combinations(range(24),4)
C.cardinality()
︡cd191394-07f3-4b8e-9a8b-b426c8aca99f︡{"stdout":"10626\n"}︡{"done":true}
︠830501e5-bc6b-4758-9222-d8d952e2279fs︠
C = Combinations(range(24),4)
C.cardinality() *4

︡6833472b-d7c4-4415-8e38-e48583d0e1dd︡{"stdout":"42504\n"}︡{"done":true}
︠6ba58f29-34ec-4313-8479-e91d972ad235︠
# Binomial examples
binomial(52,13)
︡0efc0f12-ed0b-465c-88f5-f41a9cf8dc50︡{"stdout":"635013559600\n"}︡{"done":true}
︠097c7b7e-7391-48a4-881c-74c9567e9815s︠
binomial(52,13)*binomial(39,13)*binomial(26,13)
︡7f9ba3ac-65bb-4642-85cd-d49d709905cf︡{"stdout":"53644737765488792839237440000\n"}︡{"done":true}









