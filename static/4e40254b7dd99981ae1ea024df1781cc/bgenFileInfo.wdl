version 1.0

task BgenFileInfo {
  input {
    Boolean? in_bg_en
    Boolean? in_sample
  }
  command <<<
    bgenFileInfo \
      ~{if (in_bg_en) then "--inBgen" else ""} \
      ~{if (in_sample) then "--inSample" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_bg_en: ": Input BGEN File"
    in_sample: ": Input Sample File"
  }
  output {
    File out_stdout = stdout()
  }
}