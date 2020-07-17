version 1.0

task AlignmentSieve {
  input {
    File? bam
    String? outfile
    Int? number_of_processors
    File? filter_metrics
    String? filtered_out_reads
    String? label
    Boolean? smart_labels
    Boolean? verbose
    Array[String] shift
    Boolean? atac_shift
    Boolean? bed
    Int? min_fragment_length
    Int? max_fragment_length
    String example
    String usage
  }
  command <<<
    alignmentSieve \
      ~{example} \
      ~{usage} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if defined(number_of_processors) then ("--numberOfProcessors " +  '"' + number_of_processors + '"') else ""} \
      ~{if defined(filter_metrics) then ("--filterMetrics " +  '"' + filter_metrics + '"') else ""} \
      ~{if defined(filtered_out_reads) then ("--filteredOutReads " +  '"' + filtered_out_reads + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{true="--smartLabels" false="" smart_labels} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(shift) then ("--shift " +  '"' + shift + '"') else ""} \
      ~{true="--ATACshift" false="" atac_shift} \
      ~{true="--BED" false="" bed} \
      ~{if defined(min_fragment_length) then ("--minFragmentLength " +  '"' + min_fragment_length + '"') else ""} \
      ~{if defined(max_fragment_length) then ("--maxFragmentLength " +  '"' + max_fragment_length + '"') else ""}
  >>>
  parameter_meta {
    bam: "An indexed BAM file."
    outfile: "The file to write results to. These are the alignments or fragments that pass the filtering criteria."
    number_of_processors: "Number of processors to use. Type \"max/2\" to use half the maximum number of processors or \"max\" to use all available processors. (Default: 1)"
    filter_metrics: "The number of entries in total and filtered are saved to this file"
    filtered_out_reads: "If desired, all reads NOT passing the filtering criteria can be written to this file."
    label: "User defined label instead of the default label (file name)."
    smart_labels: "Instead of manually specifying a labels for the input file, this causes deepTools to use the file name after removing the path and extension."
    verbose: "Set to see processing messages."
    shift: "Shift the left and right end of a read (for BAM files) or a fragment (for BED files). A positive value shift an end to the right (on the + strand) and a negative value shifts a fragment to the left. Either 2 or 4 integers can be provided. For example, \"2 -3\" will shift the left-most fragment end two bases to the right and the right-most end 3 bases to the left. If 4 integers are provided, then the first and last two refer to fragments whose read 1 is on the left or right, respectively. Consequently, it is possible to take strand into consideration for strand-specific protocols. A fragment whose length falls below 1 due to shifting will not be written to the output. See the online documentation for graphical examples. Note that non-properly-paired reads will be filtered."
    atac_shift: "Shift the produced BAM file or BEDPE regions as commonly done for ATAC-seq. This is equivalent to --shift 4 -5 5 -4."
    bed: "Instead of producing BAM files, write output in BEDPE format (as defined by MACS2). Note that only reads/fragments passing filtering criterion are written in BEDPE format."
    min_fragment_length: "The minimum fragment length needed for read/pair inclusion. This option is primarily useful in ATACseq experiments, for filtering mono- or di-nucleosome fragments. (Default: 0)"
    max_fragment_length: "The maximum fragment length needed for read/pair inclusion. A value of 0 indicates no limit. (Default: 0)"
    example: ""
    usage: ""
  }
}