version 1.0

task Nfeumbrellaslice {
  input {
    Boolean? pretend
    Boolean? gradient
    Boolean? reset
    Boolean? translate
    Boolean? dimensions
    File filename
  }
  command <<<
    nfe_umbrella_slice \
      ~{filename} \
      ~{if (pretend) then "--pretend" else ""} \
      ~{if (gradient) then "--gradient" else ""} \
      ~{if (reset) then "--reset" else ""} \
      ~{if (translate) then "--translate" else ""} \
      ~{if (dimensions) then "--dimensions" else ""}
  >>>
  parameter_meta {
    pretend: ""
    gradient: "(off by default)"
    reset: "(off by default)"
    translate: "(0.0 by default)"
    dimensions: ""
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}