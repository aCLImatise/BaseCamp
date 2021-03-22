version 1.0

task FunannotateTest {
  input {
    Boolean? tests
    Boolean? cpus
    Boolean? debug
    String arguments
  }
  command <<<
    funannotate test \
      ~{arguments} \
      ~{if (tests) then "--tests" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/funannotate:1.8.5--pyh3252c3a_0"
  }
  parameter_meta {
    tests: "Test sets to run. [all,clean,mask,predict,busco,rna-seq,annotate,compare]"
    cpus: "Number of cpus to use. Default: 2"
    debug: "Keep output files"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}