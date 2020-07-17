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
      ~{true="--tests" false="" tests} \
      ~{true="--cpus" false="" cpus}
  >>>
  parameter_meta {
    tests: "Test sets to run. [all,clean,mask,predict,busco,rna-seq,annotate,compare]"
    cpus: "Number of cpus to use. Default: 2"
    arguments: ""
  }
}