version 1.0

task Deepacstrain {
  input {
    Boolean? no_eager
    Boolean? v
  }
  command <<<
    deepac_strain \
      ~{if (no_eager) then "--no-eager" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    no_eager: "Disable eager mode."
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}