version 1.0

task HmmpressHmmfile {
  input {
    Boolean? options
  }
  command <<<
    hmmpress hmmfile \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
  }
}