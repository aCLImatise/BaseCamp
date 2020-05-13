version 1.0

task XsvJoinColumns2 {
  input {
    String? columnsColumns1
    String? inputInput1
    String? columnsColumns2
    String? inputInput2
  }
  command <<<
    xsv join columns2 \
      ~{columnsColumns1} \
      ~{inputInput1} \
      ~{columnsColumns2} \
      ~{inputInput2}
  >>>
}