version 1.0

task HmmpressHmmfile {
  input {
    Boolean? options
  }
  command <<<
    hmmpress hmmfile \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}