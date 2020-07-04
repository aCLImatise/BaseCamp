version 1.0

task IntronExonReads.py {
  input {
    String? gff
    String? bam
    Boolean? stranded
    String? processes
    Boolean? verbose
    String example
    String from
    String py_bed_tools
    String documentation
  }
  command <<<
    intron_exon_reads.py \
      ~{example} \
      ~{from} \
      ~{py_bed_tools} \
      ~{documentation} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{true="--stranded" false="" stranded} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    gff: "GFF or GTF file containing annotations"
    bam: "BAM file containing reads to be counted"
    stranded: "Use strand-specific merging and overlap. Default is to ignore strand"
    processes: "Number of processes to use in parallel."
    verbose: "Verbose (goes to stderr)"
    example: ""
    from: ""
    py_bed_tools: ""
    documentation: ""
  }
}