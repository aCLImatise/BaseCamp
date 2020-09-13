version 1.0

task Minced {
  input {
    Boolean? search_wl
    Boolean? min_nr
    Boolean? min_rl
    Boolean? max_rl
    Boolean? mins_l
    Boolean? max_sl
    Boolean? gff
    Boolean? gff_full
    File? spacers
    File file_dot_fa
    String? output_file_dot_txt
    String? output_file_dot_gff
  }
  command <<<
    minced \
      ~{file_dot_fa} \
      ~{output_file_dot_txt} \
      ~{output_file_dot_gff} \
      ~{if (search_wl) then "-searchWL" else ""} \
      ~{if (min_nr) then "-minNR" else ""} \
      ~{if (min_rl) then "-minRL" else ""} \
      ~{if (max_rl) then "-maxRL" else ""} \
      ~{if (mins_l) then "-minSL" else ""} \
      ~{if (max_sl) then "-maxSL" else ""} \
      ~{if (gff) then "-gff" else ""} \
      ~{if (gff_full) then "-gffFull" else ""} \
      ~{if (spacers) then "-spacers" else ""}
  >>>
  parameter_meta {
    search_wl: "Length of search window used to discover CRISPRs (range: 6-9). Default: 8"
    min_nr: "Minimum number of repeats a CRISPR must contain. Default: 3"
    min_rl: "Minimum length of the CRISPR repeats. Default: 23"
    max_rl: "Maximum length of the CRISPR repeats. Default: 47"
    mins_l: "Minimum length of the CRISPR spacers. Default: 26"
    max_sl: "Maximum length of the CRISPR spacers. Default: 50"
    gff: "Output summary results in gff format containing\\nonly the positions of the CRISPR arrays. Default: false"
    gff_full: "Output detailed results in gff format containing\\npositions of CRISPR arrays and all repeat units. Default: false"
    spacers: "Output a fasta formatted file containing the spacers. Default: false"
    file_dot_fa: ""
    output_file_dot_txt: ""
    output_file_dot_gff: ""
  }
  output {
    File out_stdout = stdout()
    File out_spacers = "${in_spacers}"
  }
}