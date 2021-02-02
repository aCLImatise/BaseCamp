version 1.0

task Taxgetrank {
  input {
    Boolean? hidden
  }
  command <<<
    taxgetrank \
      ~{if (hidden) then "-hidden" else ""}
  >>>
  parameter_meta {
    hidden: "boolean    [N] Show taxons hidden in GenBank"
  }
  output {
    File out_stdout = stdout()
  }
}