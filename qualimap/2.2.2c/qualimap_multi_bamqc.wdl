version 1.0

task QualimapMultiBamqc {
  input {
    Boolean? paint_chromosome_limits
    String? data
    String? feature_file
    String? hm
    String? nr
    String? nw
    String? outdir
    String? outfile
    String? out_format
    String? sequencing_protocol
    Boolean? run_bam_qc
  }
  command <<<
    qualimap multi-bamqc \
      ~{true="--paint-chromosome-limits" false="" paint_chromosome_limits} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(feature_file) then ("--feature-file " +  '"' + feature_file + '"') else ""} \
      ~{if defined(hm) then ("-hm " +  '"' + hm + '"') else ""} \
      ~{if defined(nr) then ("-nr " +  '"' + nr + '"') else ""} \
      ~{if defined(nw) then ("-nw " +  '"' + nw + '"') else ""} \
      ~{if defined(outdir) then ("-outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(outfile) then ("-outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(out_format) then ("-outformat " +  '"' + out_format + '"') else ""} \
      ~{if defined(sequencing_protocol) then ("--sequencing-protocol " +  '"' + sequencing_protocol + '"') else ""} \
      ~{true="--run-bamqc" false="" run_bam_qc}
  >>>
  parameter_meta {
    paint_chromosome_limits: "Only for -r mode. Paint chromosome limits inside charts"
    data: "File describing the input data. Format of the file is a 2- or 3-column tab-delimited table. Column 1: sample name Column 2: either path to the BAM QC result or path to BAM file (-r mode) Column 3: group name (activates sample group marking)"
    feature_file: "Only for -r mode. Feature file with regions of interest in GFF/GTF or BED format"
    hm: "Only for -r mode. Minimum size for a homopolymer to be considered in indel analysis (default is 3)"
    nr: "Only for -r mode. Number of reads analyzed in a chunk (default is 1000)"
    nw: "Only for -r mode. Number of windows (default is 400)"
    outdir: "Output folder for HTML report and raw data."
    outfile: "Output file for PDF report (default value is report.pdf)."
    out_format: "Format of the output report (PDF, HTML or both PDF:HTML, default is HTML)."
    sequencing_protocol: "Only for -r mode. Sequencing library protocol: strand-specific-forward, strand-specific-reverse or non-strand-specific (default)"
    run_bam_qc: "Raw BAM files are provided as input. If this option is activated BAM QC process first will be run for each sample, then multi-sample analysis will be performed."
  }
}