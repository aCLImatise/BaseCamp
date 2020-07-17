version 1.0

task FaSize {
  input {
    Boolean? detailed
    Boolean? tab
    File file
  }
  command <<<
    faSize \
      ~{file} \
      ~{true="-detailed" false="" detailed} \
      ~{true="-tab" false="" tab}
  >>>
  parameter_meta {
    detailed: "outputs name and size of each record has the side effect of printing nothing else"
    tab: "output statistics in a tab separated format"
    file: ""
  }
}