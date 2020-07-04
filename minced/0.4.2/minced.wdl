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
    Boolean? spacers
    File file_dot_fa
    String? output_file_dot_txt
    String? output_file_dot_gff
  }
  command <<<
    minced \
      ~{file_dot_fa} \
      ~{output_file_dot_txt} \
      ~{output_file_dot_gff} \
      ~{true="-searchWL" false="" search_wl} \
      ~{true="-minNR" false="" min_nr} \
      ~{true="-minRL" false="" min_rl} \
      ~{true="-maxRL" false="" max_rl} \
      ~{true="-minSL" false="" mins_l} \
      ~{true="-maxSL" false="" max_sl} \
      ~{true="-gff" false="" gff} \
      ~{true="-gffFull" false="" gff_full} \
      ~{true="-spacers" false="" spacers}
  >>>
  parameter_meta {
    search_wl: "Length of search window used to discover CRISPRs (range: 6-9). Default: 8"
    min_nr: "Minimum number of repeats a CRISPR must contain. Default: 3"
    min_rl: "Minimum length of the CRISPR repeats. Default: 23"
    max_rl: "Maximum length of the CRISPR repeats. Default: 47"
    mins_l: "Minimum length of the CRISPR spacers. Default: 26"
    max_sl: "Maximum length of the CRISPR spacers. Default: 50"
    gff: "Output summary results in gff format containing only the positions of the CRISPR arrays. Default: false"
    gff_full: "Output detailed results in gff format containing positions of CRISPR arrays and all repeat units. Default: false"
    spacers: "Output a fasta formatted file containing the spacers. Default: false"
    file_dot_fa: ""
    output_file_dot_txt: ""
    output_file_dot_gff: ""
  }
}