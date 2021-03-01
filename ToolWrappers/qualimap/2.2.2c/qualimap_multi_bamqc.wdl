version 1.0

task QualimapMultibamqc {
  input {
    Boolean? paint_chromosome_limits
    File? data
    File? feature_file
    Int? hm
    Int? nr
    Int? nw
    Directory? outdir
    File? outfile
    String? out_format
    String? sequencing_protocol
    Boolean? run_bam_qc
  }
  command <<<
    qualimap multi_bamqc \
      ~{if (paint_chromosome_limits) then "--paint-chromosome-limits" else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(feature_file) then ("--feature-file " +  '"' + feature_file + '"') else ""} \
      ~{if defined(hm) then ("-hm " +  '"' + hm + '"') else ""} \
      ~{if defined(nr) then ("-nr " +  '"' + nr + '"') else ""} \
      ~{if defined(nw) then ("-nw " +  '"' + nw + '"') else ""} \
      ~{if defined(outdir) then ("-outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(outfile) then ("-outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(out_format) then ("-outformat " +  '"' + out_format + '"') else ""} \
      ~{if defined(sequencing_protocol) then ("--sequencing-protocol " +  '"' + sequencing_protocol + '"') else ""} \
      ~{if (run_bam_qc) then "--run-bamqc" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    paint_chromosome_limits: "Only for -r mode. Paint chromosome limits\\ninside charts"
    data: "File describing the input data. Format of the\\nfile is a 2- or 3-column tab-delimited table.\\nColumn 1: sample name\\nColumn 2: either path to the BAM QC result or\\npath to BAM file (-r mode)\\nColumn 3: group name (activates sample group\\nmarking)"
    feature_file: "Only for -r mode. Feature file with regions of\\ninterest in GFF/GTF or BED format"
    hm: "Only for -r mode. Minimum size for a\\nhomopolymer to be considered in indel analysis\\n(default is 3)"
    nr: "Only for -r mode. Number of reads analyzed in\\na chunk (default is 1000)"
    nw: "Only for -r mode. Number of windows (default\\nis 400)"
    outdir: "Output folder for HTML report and raw data."
    outfile: "Output file for PDF report (default value is\\nreport.pdf)."
    out_format: "Format of the output report (PDF, HTML or both\\nPDF:HTML, default is HTML)."
    sequencing_protocol: "Only for -r mode. Sequencing library protocol:\\nstrand-specific-forward,\\nstrand-specific-reverse or non-strand-specific\\n(default)"
    run_bam_qc: "Raw BAM files are provided as input. If this\\noption is activated BAM QC process first will\\nbe run for each sample, then multi-sample\\nanalysis will be performed.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_outfile = "${in_outfile}"
  }
}