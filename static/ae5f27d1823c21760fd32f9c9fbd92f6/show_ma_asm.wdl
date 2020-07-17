version 1.0

task ShowMaAsm {
  input {
    Boolean? count_gaps_printed
    Boolean? print_snps_addition
    Boolean? print_alignments_unitigs
    Boolean? display_code_version
    String uid
    String asm_file
    String frg_file
  }
  command <<<
    show-ma-asm \
      ~{uid} \
      ~{asm_file} \
      ~{frg_file} \
      ~{true="-g" false="" count_gaps_printed} \
      ~{true="-s" false="" print_snps_addition} \
      ~{true="-u" false="" print_alignments_unitigs} \
      ~{true="-V" false="" display_code_version}
  >>>
  parameter_meta {
    count_gaps_printed: "Count gaps in printed consensus positions"
    print_snps_addition: "Print SNPs in addition to multialignments"
    print_alignments_unitigs: "Print alignments for unitig(s) with specfied uid(s)"
    display_code_version: "Display code version"
    uid: ""
    asm_file: ""
    frg_file: ""
  }
}