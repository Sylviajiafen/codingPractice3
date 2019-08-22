# codingPractice3
## Memory Leak

### **分別以 delegate 及 closure 驗證什麼情況會造成 Retain Cycle (memory leak)，以及該如何解決

#### 運用的觀念：
      
     * ARC
     * Retain Cycle
     * Reference Type

1. 建構兩個頁面： **FirstViewController**、**NextViewController**

2. **FirstViewController** 上有一個按鈕，點擊後會 push **NextViewController**

3. 另有一個 UIView: **SelectionView**，及一個名為 **Fish** 的 class

   * SelectionView:
   
     * 有一個 delegate 變數
     
   * Fish:
   
     * 有一個名為 closure 的變數，assign 了一個 optional 的 closure 給此變數
     
4. 在 **NextViewController** 中，有：

   * **SelectionView** 的 instance， **NextViewController** addSubView 此 instance 
   
   * 一個 **Fish** 的 instance 叫 fish，在 **NextViewController** 執行 **Fish** 的 closure，
   
     且 closure 中執行了一個 **NextViewController** 的 function（有一個 self 指向 NextViewControoler）
   
