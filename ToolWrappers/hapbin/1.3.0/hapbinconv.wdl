version 1.0

task Hapbinconv {
  input {
    Boolean? hap
    File? out
  }
  command <<<
    hapbinconv \
      ~{if (hap) then "--hap" else ""} \
      ~{if (out) then "--out" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hap: "ASCII Hap file"
    out: "Binary output file"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}