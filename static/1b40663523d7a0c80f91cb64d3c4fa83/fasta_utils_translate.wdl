version 1.0

task FastaUtilsTranslate {
  input {
    Boolean? trans_table
    Boolean? progress
    String? fast_a_file
    String? output_file
  }
  command <<<
    fasta-utils translate \
      ~{fast_a_file} \
      ~{output_file} \
      ~{true="--trans-table" false="" trans_table} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    trans_table: "[bac_plt|drs_mit|inv_mit|prt_mit|universal|vt_mit|yst_alt|yst_mit] translation table  [default: universal]"
    progress: "Shows Progress Bar"
    fast_a_file: ""
    output_file: ""
  }
}