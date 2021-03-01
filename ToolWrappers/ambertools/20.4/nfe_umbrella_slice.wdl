version 1.0

task Nfeumbrellaslice {
  input {
    Boolean? reset
    Boolean? translate
    File filename
  }
  command <<<
    nfe_umbrella_slice \
      ~{filename} \
      ~{if (reset) then "--reset" else ""} \
      ~{if (translate) then "--translate" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reset: "(off by default)"
    translate: "(0.0 by default)"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}