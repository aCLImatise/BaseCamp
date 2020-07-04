version 1.0

task QualimapRnaseq {
  input {
    String? algorithm
    String? bam
    String? gtf
    String? oc
    String? outdir
    String? outfile
    String? out_format
    String? sequencing_protocol
    Boolean? paired
    Boolean? sorted
    String? arg
  }
  command <<<
    qualimap rnaseq \
      ~{arg} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(gtf) then ("-gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(oc) then ("-oc " +  '"' + oc + '"') else ""} \
      ~{if defined(outdir) then ("-outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(outfile) then ("-outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(out_format) then ("-outformat " +  '"' + out_format + '"') else ""} \
      ~{if defined(sequencing_protocol) then ("--sequencing-protocol " +  '"' + sequencing_protocol + '"') else ""} \
      ~{true="--paired" false="" paired} \
      ~{true="--sorted" false="" sorted}
  >>>
  parameter_meta {
    algorithm: "Counting algorithm: uniquely-mapped-reads(default) or proportional."
    bam: "Input mapping file in BAM format."
    gtf: "Annotations file in Ensembl GTF format."
    oc: "Output file for computed counts. If only name of the file is provided, then the file will be saved in the output folder."
    outdir: "Output folder for HTML report and raw data."
    outfile: "Output file for PDF report (default value is report.pdf)."
    out_format: "Format of the output report (PDF, HTML or both PDF:HTML, default is HTML)."
    sequencing_protocol: "Sequencing library protocol: strand-specific-forward, strand-specific-reverse or non-strand-specific (default)"
    paired: "Setting this flag for paired-end experiments will result in counting fragments instead of reads"
    sorted: "This flag indicates that the input file is already sorted by name. If not set, additional sorting by name will be performed. Only required for paired-end analysis."
    arg: ""
  }
}