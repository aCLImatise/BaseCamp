version 1.0

task Savage {
  input {
    File? path_input_fastq
    Int? p_one
    Int? p_two
    Int? min_overlap_len
    Int? num_threads
    Int? split
    Boolean? rev_comp
    Directory? outdir
    String? ref
    Boolean? no_stage_a
    Boolean? no_stage_b
    Boolean? no_stage_c
    Boolean? no_overlaps
    Boolean? no_preprocessing
    Boolean? no_assembly
    Boolean? count_strains
    Boolean? ignore_sub_reads
    String? merge_contigs
    Int? min_clique_size
    String? overlap_len_stage_c
    Int? contig_len_stage_c
    Boolean? keep_branches
    Int? sfo_mm
    Boolean? diploid
    Int? diploid_contig_len
    String? diploid_overlap_len
    Int? average_read_len
    Boolean? no_filtering
    Int? max_tip_len
  }
  command <<<
    savage \
      ~{if defined(path_input_fastq) then ("-s " +  '"' + path_input_fastq + '"') else ""} \
      ~{if defined(p_one) then ("-p1 " +  '"' + p_one + '"') else ""} \
      ~{if defined(p_two) then ("-p2 " +  '"' + p_two + '"') else ""} \
      ~{if defined(min_overlap_len) then ("--min_overlap_len " +  '"' + min_overlap_len + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if (rev_comp) then "--revcomp" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if (no_stage_a) then "--no_stage_a" else ""} \
      ~{if (no_stage_b) then "--no_stage_b" else ""} \
      ~{if (no_stage_c) then "--no_stage_c" else ""} \
      ~{if (no_overlaps) then "--no_overlaps" else ""} \
      ~{if (no_preprocessing) then "--no_preprocessing" else ""} \
      ~{if (no_assembly) then "--no_assembly" else ""} \
      ~{if (count_strains) then "--count_strains" else ""} \
      ~{if (ignore_sub_reads) then "--ignore_subreads" else ""} \
      ~{if defined(merge_contigs) then ("--merge_contigs " +  '"' + merge_contigs + '"') else ""} \
      ~{if defined(min_clique_size) then ("--min_clique_size " +  '"' + min_clique_size + '"') else ""} \
      ~{if defined(overlap_len_stage_c) then ("--overlap_len_stage_c " +  '"' + overlap_len_stage_c + '"') else ""} \
      ~{if defined(contig_len_stage_c) then ("--contig_len_stage_c " +  '"' + contig_len_stage_c + '"') else ""} \
      ~{if (keep_branches) then "--keep_branches" else ""} \
      ~{if defined(sfo_mm) then ("--sfo_mm " +  '"' + sfo_mm + '"') else ""} \
      ~{if (diploid) then "--diploid" else ""} \
      ~{if defined(diploid_contig_len) then ("--diploid_contig_len " +  '"' + diploid_contig_len + '"') else ""} \
      ~{if defined(diploid_overlap_len) then ("--diploid_overlap_len " +  '"' + diploid_overlap_len + '"') else ""} \
      ~{if defined(average_read_len) then ("--average_read_len " +  '"' + average_read_len + '"') else ""} \
      ~{if (no_filtering) then "--no_filtering" else ""} \
      ~{if defined(max_tip_len) then ("--max_tip_len " +  '"' + max_tip_len + '"') else ""}
  >>>
  parameter_meta {
    path_input_fastq: "path to input fastq containing single-end reads"
    p_one: "path to input fastq containing paired-end reads (/1)"
    p_two: "path to input fastq containing paired-end reads (/2)"
    min_overlap_len: "minimum overlap length required between reads"
    num_threads: "allowed number of cores"
    split: "split the data set into patches s.t. 500 < coverage/split_num < 1000"
    rev_comp: "use this option when paired-end input reads are in forward-reverse orientation;\\nthis option will take reverse complements of /2 reads (specified with -p2)\\nplease see the SAVAGE manual for more information about input read orientations"
    outdir: "specify output directory"
    ref: "reference genome in fasta format"
    no_stage_a: "skip Stage a (initial contig formation)"
    no_stage_b: "skip Stage b (extending initial contigs)"
    no_stage_c: "skip Stage c (merging maximized contigs into master strains)"
    no_overlaps: "skip overlap computations (use existing overlaps file instead)"
    no_preprocessing: "skip preprocessing procedure (i.e. creating data patches)"
    no_assembly: "skip all assembly steps; only use this option when using --count_strains separate from assembly (e.g. on a denovo assembly)"
    count_strains: "compute a lower bound on the number of strains in this sample; note: this requires a reference genome."
    ignore_sub_reads: "ignore subread info from previous stage"
    merge_contigs: "specify maximal distance between contigs for merging into master strains (stage c)"
    min_clique_size: "minimum clique size used during error correction"
    overlap_len_stage_c: "min_overlap_len used in stage c"
    contig_len_stage_c: "minimum contig length required for stage c input contigs"
    keep_branches: "disable merging along branches by removing them from the graph (stage b & c)"
    sfo_mm: "input parameter -e=SFO_MM for sfo: maximal mismatch rate 1/SFO_MM"
    diploid: "use this option for diploid genome assembly"
    diploid_contig_len: "minimum contig length required for diploid step contigs"
    diploid_overlap_len: "min_overlap_len used in diploid assembly step"
    average_read_len: "average length of the input reads; will be computed from the input if not specified"
    no_filtering: "disable kallisto-based filtering of contigs"
    max_tip_len: "maximum extension length for a sequence to be called a tip\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}