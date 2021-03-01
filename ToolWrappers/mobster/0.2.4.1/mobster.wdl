version 1.0

task Mobster {
  input {
    Boolean? properties
    Boolean? in
    File? out
    Boolean? sn
  }
  command <<<
    mobster \
      ~{if (properties) then "-properties" else ""} \
      ~{if (in) then "-in" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (sn) then "-sn" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    properties: "[properties]"
    in: "[input .bam file]. This value will override corresponding value in properties file. Multiple BAM files may be specified if seperated by a comma"
    out: "[output prefix]. This value will override corresponding value in properties file."
    sn: "[sample name]. This value will override corresponding value in properties file. Multiple sample names may be specified if seperated by a comma"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}