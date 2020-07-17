version 1.0

task Methplotlib {
  input {
    Array[String] methylation
    Array[String] names
    String? window
    String? gtf
    String? bed
    String? fast_a
    Boolean? simplify
    Boolean? split
    String? smooth
    String? dot_size
    Boolean? example
    String? outfile
    String? qc_file
    Boolean? v
  }
  command <<<
    methplotlib \
      ~{if defined(methylation) then ("--methylation " +  '"' + methylation + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--simplify" false="" simplify} \
      ~{true="--split" false="" split} \
      ~{if defined(smooth) then ("--smooth " +  '"' + smooth + '"') else ""} \
      ~{if defined(dot_size) then ("--dotsize " +  '"' + dot_size + '"') else ""} \
      ~{true="--example" false="" example} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(qc_file) then ("--qcfile " +  '"' + qc_file + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    methylation: "methylation data in nanopolish, nanocompore or ont- cram format"
    names: "names of datasets in --methylation"
    window: "window (region) to which the visualisation has to be restricted"
    gtf: "add annotation based on a gtf file matching to your reference genome"
    bed: "add annotation based on a bed file matching to your reference genome"
    fast_a: "required when --window is an entire chromosome, contig or transcript"
    simplify: "simplify annotation track to show genes rather than transcripts"
    split: "split, rather than overlay the methylation tracks"
    smooth: "When plotting frequencies points are averaged using a rolling window"
    dot_size: "Control the size of dots in the per read plots"
    example: "Show example command and exit."
    outfile: "File to write results to. Default: methylation_browser_{chr}_{start}_{end}.html. Use {region} as a shorthand for {chr}_{start}_{end} in the filename. Missing paths will be created."
    qc_file: "File to write the qc report to. Default: The path in outfile prefixed with qc_, default is qc_report_methyl ation_browser_{chr}_{start}_{end}.html. Use {region} as a shorthand for {chr}_{start}_{end} in the filename. Missing paths will be created."
    v: ""
  }
}