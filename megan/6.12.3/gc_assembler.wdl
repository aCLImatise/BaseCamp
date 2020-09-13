version 1.0

task Gcassembler {
  input {
    Boolean? input_daa_rma
    Boolean? output_filename_template
    Boolean? ids
    Boolean? minlength
    Boolean? min_reads
    Boolean? min_av_coverage
    Boolean? overlap_contigs
    Boolean? min_overlap_contigs
    Boolean? min_percent_identity_contigs
    Boolean? threads
    Boolean? very_verbose
    Boolean? verbose
    String classification
    String options
  }
  command <<<
    gc_assembler \
      ~{classification} \
      ~{options} \
      ~{if (input_daa_rma) then "--input" else ""} \
      ~{if (output_filename_template) then "--output" else ""} \
      ~{if (ids) then "--ids" else ""} \
      ~{if (minlength) then "--minLength" else ""} \
      ~{if (min_reads) then "--minReads" else ""} \
      ~{if (min_av_coverage) then "--minAvCoverage" else ""} \
      ~{if (overlap_contigs) then "--overlapContigs" else ""} \
      ~{if (min_overlap_contigs) then "--minOverlapContigs" else ""} \
      ~{if (min_percent_identity_contigs) then "--minPercentIdentityContigs" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (very_verbose) then "--veryVerbose" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_daa_rma: "[string]                 Input DAA or RMA6 file. Mandatory option."
    output_filename_template: "[string]                Output filename template, use %d or %s to represent class id or name, respectively. Default value: input-%d.fasta."
    ids: "[string(s)]               Names or ids of classes to assemble, or keyword ALL for all. Mandatory option."
    minlength: "[number]           Minimum contig length. Default value: 200."
    min_reads: "[number]          Minimum number of reads. Default value: 2."
    min_av_coverage: "[number]       Minimum average coverage. Default value: 1."
    overlap_contigs: "Attempt to overlap contigs. Default value: true."
    min_overlap_contigs: "[number]   Minimum overlap for two contigs. Default value: 20."
    min_percent_identity_contigs: "[number]   Mininum percent identity to merge contigs. Default value: 98.0."
    threads: "[number]               Number of worker threads. Default value: 4."
    very_verbose: "Report program is very verbose detail. Default value: false."
    verbose: "Echo commandline options and be verbose. Default value: false."
    classification: "-fun, --function [string]            Name of functional classification (choices: EGGNOG, INTERPRO2GO, KEGG, SEED, none). Mandatory option."
    options: "-mor, --minOverlapReads [number]     Minimum overlap for two reads. Default value: 20."
  }
  output {
    File out_stdout = stdout()
  }
}