version 1.0

task FastautilsTranslate {
  input {
    Boolean? trans_table
    Boolean? progress
    String? fast_a_file
    String? output_file
  }
  command <<<
    fasta_utils translate \
      ~{fast_a_file} \
      ~{output_file} \
      ~{if (trans_table) then "--trans-table" else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    trans_table: "[bac_plt|drs_mit|inv_mit|prt_mit|universal|vt_mit|yst_alt|yst_mit]\\ntranslation table  [default: universal]"
    progress: "Shows Progress Bar"
    fast_a_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}