# JDK各版本新特性

## jdk 1.5
1. [自动拆装箱](#自动拆装箱)
2. [foreach](#foreach)
3. [静态导入](#静态导入)
4. [可变参数](#可变参数)
5. [枚举](#枚举)
6. [格式化输出](#格式化输出)
7. [范型](#范型)
8. [ProcessBuilder](#ProcessBuilder)
9. [内省](#内省)
10. [线程并发库](#线程并发库)
11. [监控和管理虚拟机](#监控和管理虚拟机)
12. [元数据](#元数据)

### 自动拆装箱
```java
// 自动拆箱
int a = Integer.valueOf(20);
// 自动装箱
Integer b = 20;
```
### foreach
> 增强型for循环

```java
int[] arr = {1, 2, 3, 4};
// 普通版
for (int i = 0; i < arr.length; i++) {
int element = arr[i];
}
// 增强版
for (int element : arr) {

}
```
### 静态导入
```java
// 不使用静态导入
System.out.println(123);
// 使用静态导入
import static java.lang.System.out;
out.println(123);
// 可直接导入整个常量类下的变量
import static com.sun.tools.javac.util.Constants.*;
```
### 可变参数
```java
execute("1","2","3");
// 可变参数方法
public void execute(String... vars) {
    int length = vars.length;
    String var0 = vars[0];
    String var1 = vars[1];
}
```
### 枚举
> 枚举的一个属性表示此枚举类型的一个实例。故可以使用枚举创建一个单例。

```java
interface DemoInterface {
    void doSth();
}
// 枚举
public enum Sex implements DemoInterface {
    MALE("男性") {
        @Override
        public void doSth() {
        }
        // 实例私有
        public void do1() {
        }
    },

    FEMALE("女性") {
        // 实例私有
        public void do2() {
        }
    };
    private String description;

    Sex(String description) {
        this.description = description;
    }

    @Override
    public void doSth() {
    }
 }
```
