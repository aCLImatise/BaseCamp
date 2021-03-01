version 1.0

task IntronExonReadspy {
  input {
    File? gff
    File? bam
    Boolean? stranded
    Int? processes
    Boolean? verbose
    String example
    String from
    String py_bed_tools
    String documentation
  }
  command <<<
    intron_exon_reads_py \
      ~{example} \
      ~{from} \
      ~{py_bed_tools} \
      ~{documentation} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff: "GFF or GTF file containing annotations"
    bam: "BAM file containing reads to be counted"
    stranded: "Use strand-specific merging and overlap. Default is to\\nignore strand"
    processes: "Number of processes to use in parallel."
    verbose: "Verbose (goes to stderr)"
    example: ""
    from: ""
    py_bed_tools: ""
    documentation: ""
  }
  output {
    File out_stdout = stdout()
  }
}