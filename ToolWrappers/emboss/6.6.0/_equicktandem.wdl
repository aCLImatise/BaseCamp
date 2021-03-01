version 1.0

task Equicktandem {
  input {
    Boolean? max_repeat
    Boolean? threshold
    File? orig_file
  }
  command <<<
    _equicktandem \
      ~{if (max_repeat) then "-maxrepeat" else ""} \
      ~{if (threshold) then "-threshold" else ""} \
      ~{if (orig_file) then "-origfile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_repeat: "integer    [600] Maximum repeat size (Any integer\\nvalue)"
    threshold: "integer    [20] Threshold score (Any integer value)"
    orig_file: "outfile    [*.equicktandem] Sanger Centre program\\nquicktandem output file (optional)"
  }
  output {
    File out_stdout = stdout()
    File out_orig_file = "${in_orig_file}"
  }
}