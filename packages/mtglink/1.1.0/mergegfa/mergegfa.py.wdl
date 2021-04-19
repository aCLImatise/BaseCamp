version 1.0

task Mergegfapy {
  input {
    Int? one
    Int? two
    File? out
  }
  command <<<
    mergegfa_py \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mtglink:1.1.0--hdfd78af_0"
  }
  parameter_meta {
    one: "GFA 2.0 file no.1 (format: 'xxx.gfa')"
    two: "GFA 2.0 file no.2 (format: 'xxx.gfa')"
    out: "Name of the output merged GFA file"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}