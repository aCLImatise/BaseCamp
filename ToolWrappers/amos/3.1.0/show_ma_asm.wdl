version 1.0

task Showmaasm {
  input {
    Boolean? count_gaps_printed
    Boolean? print_snps_addition
    Boolean? print_alignments_unitigs
    Boolean? display_code_version
    String uid
    File asm_file
    File frg_file
  }
  command <<<
    show_ma_asm \
      ~{uid} \
      ~{asm_file} \
      ~{frg_file} \
      ~{if (count_gaps_printed) then "-g" else ""} \
      ~{if (print_snps_addition) then "-s" else ""} \
      ~{if (print_alignments_unitigs) then "-u" else ""} \
      ~{if (display_code_version) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    count_gaps_printed: "Count gaps in printed consensus positions"
    print_snps_addition: "Print SNPs in addition to multialignments"
    print_alignments_unitigs: "Print alignments for unitig(s) with specfied uid(s)"
    display_code_version: "Display code version"
    uid: ""
    asm_file: ""
    frg_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}