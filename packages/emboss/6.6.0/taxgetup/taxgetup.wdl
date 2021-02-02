version 1.0

task Taxgetup {
  input {
    Boolean? hidden
  }
  command <<<
    taxgetup \
      ~{if (hidden) then "-hidden" else ""}
  >>>
  parameter_meta {
    hidden: "boolean    [N] Show taxons hidden in GenBank"
  }
  output {
    File out_stdout = stdout()
  }
}