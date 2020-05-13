version 1.0

task XsvJoinColumns1Input1Input2 {
  input {
    String? columnsColumns2
    String? inputInput2
  }
  command <<<
    xsv join columns1 input1 input2 \
      ~{columnsColumns2} \
      ~{inputInput2}
  >>>
}