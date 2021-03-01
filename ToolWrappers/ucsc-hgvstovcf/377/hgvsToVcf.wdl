version 1.0

task HgvsToVcf {
  input {
    Boolean? no_left_shift
    String db
    String input_dot_hgvs
  }
  command <<<
    hgvsToVcf \
      ~{db} \
      ~{input_dot_hgvs} \
      ~{if (no_left_shift) then "-noLeftShift" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_left_shift: "Don't do the VCF-conventional left shifting of ambiguous placements"
    db: ""
    input_dot_hgvs: ""
  }
  output {
    File out_stdout = stdout()
  }
}