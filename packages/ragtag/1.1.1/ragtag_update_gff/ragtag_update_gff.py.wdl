version 1.0

task RagtagUpdateGffpy {
  input {
    Boolean? update_misassembly_correction
    String ragtag_do_tpy
    String update_gff
    String genes_dot_gff
    String ragtag_dot_agp
  }
  command <<<
    ragtag_update_gff_py \
      ~{ragtag_do_tpy} \
      ~{update_gff} \
      ~{genes_dot_gff} \
      ~{ragtag_dot_agp} \
      ~{if (update_misassembly_correction) then "-c" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ragtag:1.1.1--pyh7b7c402_0"
  }
  parameter_meta {
    update_misassembly_correction: "update for misassembly correction (ragtag.correction.agp)"
    ragtag_do_tpy: ""
    update_gff: ""
    genes_dot_gff: ""
    ragtag_dot_agp: ""
  }
  output {
    File out_stdout = stdout()
  }
}