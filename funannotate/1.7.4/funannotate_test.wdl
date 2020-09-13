version 1.0

task FunannotateTest {
  input {
    Boolean? tests
    Boolean? cpus
    String arguments
  }
  command <<<
    funannotate test \
      ~{arguments} \
      ~{if (tests) then "--tests" else ""} \
      ~{if (cpus) then "--cpus" else ""}
  >>>
  parameter_meta {
    tests: "Test sets to run. [all,clean,mask,predict,busco,rna-seq,annotate,compare]"
    cpus: "Number of cpus to use. Default: 2"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}