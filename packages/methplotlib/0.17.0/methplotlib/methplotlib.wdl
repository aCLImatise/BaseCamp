version 1.0

task Methplotlib {
  input {
    Array[String] methylation
    Array[String] names
    String? window
    File? gtf
    File? bed
    String? fast_a
    Boolean? simplify
    String? static
    Boolean? binary
    Int? dot_size
    Boolean? example
    File? outfile
    File? qc_file
    Boolean? v
    String transcripts
    String nuances
  }
  command <<<
    methplotlib \
      ~{transcripts} \
      ~{nuances} \
      ~{if defined(methylation) then ("--methylation " +  '"' + methylation + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (simplify) then "--simplify" else ""} \
      ~{if defined(static) then ("--static " +  '"' + static + '"') else ""} \
      ~{if (binary) then "--binary" else ""} \
      ~{if defined(dot_size) then ("--dotsize " +  '"' + dot_size + '"') else ""} \
      ~{if (example) then "--example" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(qc_file) then ("--qcfile " +  '"' + qc_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/methplotlib:0.17.0--py_0"
  }
  parameter_meta {
    methylation: "data in nanopolish, nanocompore, ont-cram or bedgraph\\nformat"
    names: "names of datasets in --methylation"
    window: "window (region) to which the visualisation has to be\\nrestricted"
    gtf: "add annotation based on a gtf file"
    bed: "add annotation based on a bed file"
    fast_a: "required when --window is an entire chromosome, contig\\nor transcript"
    simplify: "simplify annotation track to show genes rather than"
    static: "Make a static image of the browser window"
    binary: "Make the nanopolish plot ignorning log likelihood"
    dot_size: "Control the size of dots in the per read plots"
    example: "Show example command and exit."
    outfile: "File to write results to. Default:\\nmethylation_browser_{chr}_{start}_{end}.html. Use\\n{region} as a shorthand for {chr}_{start}_{end} in the\\nfilename. Missing paths will be created."
    qc_file: "File to write the qc report to. Default: The path in\\noutfile prefixed with qc_, default is qc_report_methyl\\nation_browser_{chr}_{start}_{end}.html. Use {region}\\nas a shorthand for {chr}_{start}_{end} in the\\nfilename. Missing paths will be created.\\n"
    v: ""
    transcripts: "--split               split, rather than overlay the methylation tracks"
    nuances: "--smooth SMOOTH       Rolling window size for averaging frequency values"
  }
  output {
    File out_stdout = stdout()
  }
}