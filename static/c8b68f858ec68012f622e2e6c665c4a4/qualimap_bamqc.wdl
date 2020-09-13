version 1.0

task QualimapBamqc {
  input {
    File? bam
    Boolean? paint_chromosome_limits
    Int? genome_gc_distr
    File? feature_file
    Int? hm
    Boolean? collect_overlap_pairs
    Int? nr
    Int? nt
    Int? nw
    File? output_genome_coverage
    Boolean? outside_stats
    Directory? outdir
    String? out_format
    String? sequencing_protocol
    Boolean? skip_duplicated
    Int? skip_dup_mode
    String data_dot
  }
  command <<<
    qualimap bamqc \
      ~{data_dot} \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if (paint_chromosome_limits) then "--paint-chromosome-limits" else ""} \
      ~{if defined(genome_gc_distr) then ("--genome-gc-distr " +  '"' + genome_gc_distr + '"') else ""} \
      ~{if defined(feature_file) then ("--feature-file " +  '"' + feature_file + '"') else ""} \
      ~{if defined(hm) then ("-hm " +  '"' + hm + '"') else ""} \
      ~{if (collect_overlap_pairs) then "--collect-overlap-pairs" else ""} \
      ~{if defined(nr) then ("-nr " +  '"' + nr + '"') else ""} \
      ~{if defined(nt) then ("-nt " +  '"' + nt + '"') else ""} \
      ~{if defined(nw) then ("-nw " +  '"' + nw + '"') else ""} \
      ~{if defined(output_genome_coverage) then ("--output-genome-coverage " +  '"' + output_genome_coverage + '"') else ""} \
      ~{if (outside_stats) then "--outside-stats" else ""} \
      ~{if defined(outdir) then ("-outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_format) then ("-outformat " +  '"' + out_format + '"') else ""} \
      ~{if defined(sequencing_protocol) then ("--sequencing-protocol " +  '"' + sequencing_protocol + '"') else ""} \
      ~{if (skip_duplicated) then "--skip-duplicated" else ""} \
      ~{if defined(skip_dup_mode) then ("--skip-dup-mode " +  '"' + skip_dup_mode + '"') else ""}
  >>>
  parameter_meta {
    bam: "Input mapping file in BAM format"
    paint_chromosome_limits: "Paint chromosome limits inside charts"
    genome_gc_distr: "Species to compare with genome GC\\ndistribution. Possible values: HUMAN -\\nhg19; MOUSE - mm9(default), mm10"
    feature_file: "Feature file with regions of interest in\\nGFF/GTF or BED format"
    hm: "Minimum size for a homopolymer to be\\nconsidered in indel analysis (default is\\n3)"
    collect_overlap_pairs: "Activate this option to collect statistics\\nof overlapping paired-end reads"
    nr: "Number of reads analyzed in a chunk\\n(default is 1000)"
    nt: "Number of threads (default is 8)"
    nw: "Number of windows (default is 400)"
    output_genome_coverage: "File to save per base non-zero coverage.\\nWarning: large files are expected for\\nlarge genomes"
    outside_stats: "Report information for the regions outside\\nthose defined by feature-file  (ignored\\nwhen -gff option is not set)"
    outdir: "Output folder for HTML report and raw"
    out_format: "Format of the output report (PDF, HTML or\\nboth PDF:HTML, default is HTML)."
    sequencing_protocol: "Sequencing library protocol:\\nstrand-specific-forward,\\nstrand-specific-reverse or\\nnon-strand-specific (default)"
    skip_duplicated: "Activate this option to skip duplicated\\nalignments from the analysis. If the\\nduplicates are not flagged in the BAM\\nfile, then they will be detected by\\nQualimap and can be selected for skipping."
    skip_dup_mode: "Specific type of duplicated alignments to\\nskip (if this option is activated).\\n0 : only flagged duplicates (default)\\n1 : only estimated by Qualimap\\n2 : both flagged and estimated\\n"
    data_dot: "-outfile <arg>                       Output file for PDF report (default value"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}