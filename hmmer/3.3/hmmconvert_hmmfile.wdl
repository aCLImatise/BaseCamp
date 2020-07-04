version 1.0

task HmmconvertHmmfile {
  input {
    Boolean? options
  }
  command <<<
    hmmconvert hmmfile \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
  }
}