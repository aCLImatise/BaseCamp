version 1.0

task QualimapRnaseq {
  input {
    String? algorithm
    File? bam
    File? gtf
    File? oc
    Directory? outdir
    File? outfile
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
      ~{if (paired) then "--paired" else ""} \
      ~{if (sorted) then "--sorted" else ""}
  >>>
  parameter_meta {
    algorithm: "Counting algorithm:\\nuniquely-mapped-reads(default) or\\nproportional."
    bam: "Input mapping file in BAM format."
    gtf: "Annotations file in Ensembl GTF format."
    oc: "Output file for computed counts. If only name\\nof the file is provided, then the file will be\\nsaved in the output folder."
    outdir: "Output folder for HTML report and raw data."
    outfile: "Output file for PDF report (default value is\\nreport.pdf)."
    out_format: "Format of the output report (PDF, HTML or both\\nPDF:HTML, default is HTML)."
    sequencing_protocol: "Sequencing library protocol:\\nstrand-specific-forward,\\nstrand-specific-reverse or non-strand-specific\\n(default)"
    paired: "Setting this flag for paired-end experiments\\nwill result in counting fragments instead of\\nreads"
    sorted: "This flag indicates that the input file is\\nalready sorted by name. If not set, additional\\nsorting by name will be performed. Only\\nrequired for paired-end analysis.\\n"
    arg: ""
  }
  output {
    File out_stdout = stdout()
    File out_oc = "${in_oc}"
    Directory out_outdir = "${in_outdir}"
    File out_outfile = "${in_outfile}"
  }
}