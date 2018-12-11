#coding=utf-8
import  xml.dom.minidom

#sourcemonitor_path = top_dir 
#cmd=export sourcemonitor_path=" + sourcemonitor_path + ";wine " + sourcemonitor_path + " /C commands.xml"
#打开xml文档
dom = xml.dom.minidom.parse('test.xml')

#得到文档元素对象
root = dom.documentElement

# f = root.getElementsByTagName('metric')
# print(f[13].firstChild.data)
# print(f[28].firstChild.data)


f = root.getElementsByTagName('file')
i=0
for ff in f:
	tmp=root.getElementsByTagName('metric')
	comp=tmp[15*i+13].firstChild.data
	print(ff.getAttribute("file_name"))
	print(comp)

# bb = root.getElementsByTagName('item')
# b= bb[1]
# print (b.nodeName)

# cc=dom.getElementsByTagName('caption')
# c1=cc[0]
# print (c1.firstChild.data)

# c2=cc[1]
# print (c2.firstChild.data)

# c3=cc[2]
# print (c3.firstChild.data)
