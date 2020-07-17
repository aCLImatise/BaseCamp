version 1.0

task EaselAlistatMsafile {
  input {
    Boolean? options
  }
  command <<<
    easel alistat msafile \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
  }
}