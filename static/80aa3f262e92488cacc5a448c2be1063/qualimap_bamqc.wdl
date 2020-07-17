version 1.0

task QualimapBamqc {
  input {
    String? bam
    Boolean? paint_chromosome_limits
    String? genome_gc_distr
    String? feature_file
    String? hm
    Boolean? collect_overlap_pairs
    String? nr
    String? nt
    String? nw
    String? output_genome_coverage
    Boolean? outside_stats
    String? outdir
    String? outfile
    String? out_format
    String? sequencing_protocol
    Boolean? skip_duplicated
    String? skip_dup_mode
  }
  command <<<
    qualimap bamqc \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{true="--paint-chromosome-limits" false="" paint_chromosome_limits} \
      ~{if defined(genome_gc_distr) then ("--genome-gc-distr " +  '"' + genome_gc_distr + '"') else ""} \
      ~{if defined(feature_file) then ("--feature-file " +  '"' + feature_file + '"') else ""} \
      ~{if defined(hm) then ("-hm " +  '"' + hm + '"') else ""} \
      ~{true="--collect-overlap-pairs" false="" collect_overlap_pairs} \
      ~{if defined(nr) then ("-nr " +  '"' + nr + '"') else ""} \
      ~{if defined(nt) then ("-nt " +  '"' + nt + '"') else ""} \
      ~{if defined(nw) then ("-nw " +  '"' + nw + '"') else ""} \
      ~{if defined(output_genome_coverage) then ("--output-genome-coverage " +  '"' + output_genome_coverage + '"') else ""} \
      ~{true="--outside-stats" false="" outside_stats} \
      ~{if defined(outdir) then ("-outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(outfile) then ("-outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(out_format) then ("-outformat " +  '"' + out_format + '"') else ""} \
      ~{if defined(sequencing_protocol) then ("--sequencing-protocol " +  '"' + sequencing_protocol + '"') else ""} \
      ~{true="--skip-duplicated" false="" skip_duplicated} \
      ~{if defined(skip_dup_mode) then ("--skip-dup-mode " +  '"' + skip_dup_mode + '"') else ""}
  >>>
  parameter_meta {
    bam: "Input mapping file in BAM format"
    paint_chromosome_limits: "Paint chromosome limits inside charts"
    genome_gc_distr: "Species to compare with genome GC distribution. Possible values: HUMAN - hg19; MOUSE - mm9(default), mm10"
    feature_file: "Feature file with regions of interest in GFF/GTF or BED format"
    hm: "Minimum size for a homopolymer to be considered in indel analysis (default is 3)"
    collect_overlap_pairs: "Activate this option to collect statistics of overlapping paired-end reads"
    nr: "Number of reads analyzed in a chunk (default is 1000)"
    nt: "Number of threads (default is 8)"
    nw: "Number of windows (default is 400)"
    output_genome_coverage: "File to save per base non-zero coverage. Warning: large files are expected for large genomes"
    outside_stats: "Report information for the regions outside those defined by feature-file  (ignored when -gff option is not set)"
    outdir: "Output folder for HTML report and raw data."
    outfile: "Output file for PDF report (default value is report.pdf)."
    out_format: "Format of the output report (PDF, HTML or both PDF:HTML, default is HTML)."
    sequencing_protocol: "Sequencing library protocol: strand-specific-forward, strand-specific-reverse or non-strand-specific (default)"
    skip_duplicated: "Activate this option to skip duplicated alignments from the analysis. If the duplicates are not flagged in the BAM file, then they will be detected by Qualimap and can be selected for skipping."
    skip_dup_mode: "Specific type of duplicated alignments to skip (if this option is activated). 0 : only flagged duplicates (default) 1 : only estimated by Qualimap 2 : both flagged and estimated"
  }
}