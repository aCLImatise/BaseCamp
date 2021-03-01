version 1.0

task DeduplicateBismark {
  input {
    Boolean? single
    Boolean? paired
    File? outfile
    File? output_dir
    Boolean? barcode
    File? bam
    Boolean? sam
    Boolean? multiple
    Boolean? sam_tools_path
  }
  command <<<
    deduplicate_bismark \
      ~{if (single) then "--single" else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (output_dir) then "--output_dir" else ""} \
      ~{if (barcode) then "--barcode" else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (multiple) then "--multiple" else ""} \
      ~{if (sam_tools_path) then "--samtools_path" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    single: "deduplicate single-end BAM/SAM Bismark files. Default: [AUTO-DETECT]"
    paired: "deduplicate paired-end BAM/SAM Bismark files. Default: [AUTO-DETECT]"
    outfile: "[filename] The basename of a desired output file. This basename is modified to end in '.deduplicated.bam',\\nor '.multiple.deduplicated.bam' in '--multiple' mode, for consistency reasons."
    output_dir: "[path]     Output directory, either relative or absolute. Output is written to the current directory if not\\nspecified explicitly."
    barcode: "In addition to chromosome, start position and orientation this will also take a potential barcode into\\nconsideration while deduplicating. The barcode needs to be the last element of the read ID and separated\\nby a ':', e.g.: MISEQ:14:000000000-A55D0:1:1101:18024:2858_1:N:0:CTCCT"
    bam: "The output will be written out in BAM format. This script will attempt to use the path to Samtools\\nthat was specified with '--samtools_path', or, if it hasn't been specified, attempt to find Samtools\\nin the PATH. If no installation of Samtools can be found, a GZIP compressed output is written out\\ninstead (yielding a .sam.gz output file). Default: ON."
    sam: "The output will be written out in SAM format. Default: OFF."
    multiple: "All specified input files are treated as one sample and concatenated together for deduplication.\\nThis uses Unix 'cat' for SAM files and 'samtools cat' for BAM files. Additional notes for BAM files:\\nAlthough this works on either BAM or CRAM, all input files must be the same format as each other.\\nThe sequence dictionary of each input file must be identical, although this command does not check this.\\nBy default the header is taken from the first file to be concatenated."
    sam_tools_path: "[path]  The path to your Samtools installation, e.g. /home/user/samtools/. Does not need to be specified\\nexplicitly if Samtools is in the PATH already"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_output_dir = "${in_output_dir}"
    File out_bam = "${in_bam}"
  }
}