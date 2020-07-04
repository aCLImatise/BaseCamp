version 1.0

task EaselFilterMaxid {
  input {
    Boolean? options
    String msa_file
  }
  command <<<
    easel filter maxid \
      ~{msa_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    msa_file: ""
  }
}