version 1.0

task FaSize {
  input {
    Boolean? detailed
    Boolean? tab
  }
  command <<<
    faSize \
      ~{if (detailed) then "-detailed" else ""} \
      ~{if (tab) then "-tab" else ""}
  >>>
  parameter_meta {
    detailed: "outputs name and size of each record\\nhas the side effect of printing nothing else"
    tab: "output statistics in a tab separated format"
  }
  output {
    File out_stdout = stdout()
  }
}