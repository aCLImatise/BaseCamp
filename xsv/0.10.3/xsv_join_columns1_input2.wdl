version 1.0

task XsvJoinColumns1Input2 {
  input {
    String? inputInput1
    String? columnsColumns2
    String? inputInput2
  }
  command <<<
    xsv join columns1 input2 \
      ~{inputInput1} \
      ~{columnsColumns2} \
      ~{inputInput2}
  >>>
}