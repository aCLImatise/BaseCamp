version 1.0

task Counterr {
  input {
    File? bam
    File? genome
    Directory? output_dir
    Boolean? no_figures
    File? bai
    Boolean? verbose
    Int? len_min_contig
    Int? mapq_th_res
    Int? len_min_read
    Int? len_min_aln
    Int? bit_flag
    Int? len_min_hp
    Int? len_max_hp
    Int? len_context_sub
    Int? len_context_ins
    Int? len_max_in_del
    Int? len_trim_contig_edge
    Boolean? use_recorded
    Int? lim
    Int? num_pts_max
    String? report_name
  }
  command <<<
    counterr \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if defined(output_dir) then ("-output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (no_figures) then "-no_figures" else ""} \
      ~{if defined(bai) then ("-bai " +  '"' + bai + '"') else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if defined(len_min_contig) then ("-len_min_contig " +  '"' + len_min_contig + '"') else ""} \
      ~{if defined(mapq_th_res) then ("-mapq_thres " +  '"' + mapq_th_res + '"') else ""} \
      ~{if defined(len_min_read) then ("-len_min_read " +  '"' + len_min_read + '"') else ""} \
      ~{if defined(len_min_aln) then ("-len_min_aln " +  '"' + len_min_aln + '"') else ""} \
      ~{if defined(bit_flag) then ("-bitflag " +  '"' + bit_flag + '"') else ""} \
      ~{if defined(len_min_hp) then ("-len_min_hp " +  '"' + len_min_hp + '"') else ""} \
      ~{if defined(len_max_hp) then ("-len_max_hp " +  '"' + len_max_hp + '"') else ""} \
      ~{if defined(len_context_sub) then ("-len_context_sub " +  '"' + len_context_sub + '"') else ""} \
      ~{if defined(len_context_ins) then ("-len_context_ins " +  '"' + len_context_ins + '"') else ""} \
      ~{if defined(len_max_in_del) then ("-len_max_indel " +  '"' + len_max_in_del + '"') else ""} \
      ~{if defined(len_trim_contig_edge) then ("-len_trim_contig_edge " +  '"' + len_trim_contig_edge + '"') else ""} \
      ~{if (use_recorded) then "-use_recorded" else ""} \
      ~{if defined(lim) then ("-lim " +  '"' + lim + '"') else ""} \
      ~{if defined(num_pts_max) then ("-num_pts_max " +  '"' + num_pts_max + '"') else ""} \
      ~{if defined(report_name) then ("-report_name " +  '"' + report_name + '"') else ""}
  >>>
  parameter_meta {
    bam: "the input bam file (default: None)"
    genome: "the input fasta file (default: None)"
    output_dir: "the output directory for figures and stats (default:\\nNone)"
    no_figures: "pass this flag to not generate figures (default:\\nFalse)"
    bai: "the input bai filename if non-conventionally named\\n(default: )"
    verbose: "pass this flag to follow progress in the terminal\\n(default: False)"
    len_min_contig: "minimum contig length (default: 1500)"
    mapq_th_res: "minimum mapq threshold (default: 40)"
    len_min_read: "minimum read length (default: 1500)"
    len_min_aln: "minimum length aligned (default: 1000)"
    bit_flag: "bit flag for read filter (as specified in SAM doc)\\n(default: 3845)"
    len_min_hp: "minimum homopolymer length (default: 3)"
    len_max_hp: "maximum homopolymer length (default: 20)"
    len_context_sub: "length of the k-mer context for context dependent\\nsubstitution table (default: 5)"
    len_context_ins: "length of the k-mer context for context dependent\\ninsertion table (default: 6)"
    len_max_in_del: "maximum length of indels to consider (default: 20)"
    len_trim_contig_edge: "length of the contig edge to trim before computing\\nvarious statistics (default: 1)"
    use_recorded: "pass this flag to NOT perform reverse complementing of\\nthe reverse complement mapped reads (default: False)"
    lim: "pass this flag to run the program with 'lim' randomly\\nselected reads (both pass and fail) (default: -1)"
    num_pts_max: "maximum number of points to be plotted for any scatter\\nplots (default: 100000)"
    report_name: "the name of the output PDF report if the user wishes\\nto use a non-default name. (default: report.pdf)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}