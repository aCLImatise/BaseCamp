version 1.0

task GimmeLocation {
  input {
    Int? set_size_w
    String? commaseparated_list_plot
    String? cutoff_motif_scanning
    Boolean? h
    String pfm_file
    String f_a_file
  }
  command <<<
    gimme location \
      ~{pfm_file} \
      ~{f_a_file} \
      ~{if defined(set_size_w) then ("-s " +  '"' + set_size_w + '"') else ""} \
      ~{if defined(commaseparated_list_plot) then ("-i " +  '"' + commaseparated_list_plot + '"') else ""} \
      ~{if defined(cutoff_motif_scanning) then ("-c " +  '"' + cutoff_motif_scanning + '"') else ""} \
      ~{true="-h" false="" h}
  >>>
  parameter_meta {
    set_size_w: "Set size to W (default: determined from fastafile)"
    commaseparated_list_plot: "Comma-separated list of motif ids to plot (default is all ids)"
    cutoff_motif_scanning: "Cutoff for motif scanning (default 0.95)"
    h: ""
    pfm_file: "File with pfms"
    f_a_file: "Fasta formatted file"
  }
}