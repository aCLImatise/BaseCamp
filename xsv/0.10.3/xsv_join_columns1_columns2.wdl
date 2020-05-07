version 1.0

task XsvJoinColumns1Columns2 {
  input {
    String? inputInput1
    String? columnsColumns2
    String? inputInput2
  }
  command <<<
    xsv join columns1 columns2 \
      ~{inputInput1} \
      ~{columnsColumns2} \
      ~{inputInput2}
  >>>
}