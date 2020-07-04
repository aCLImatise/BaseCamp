version 1.0

task SqStoreDumpFASTQ {
  input {
    String? write_files_outprefixlibnamefastq
    Boolean? fast_q
    Boolean? fast_a
    Boolean? no_libname
    Boolean? no_read_name
    Boolean? reverse
    String? output_only_read_library
    String? output_only_single_read
    Boolean? raw
    Boolean? corrected
    Boolean? trimmed
    Boolean? compressed
    Boolean? normal
  }
  command <<<
    sqStoreDumpFASTQ \
      ~{if defined(write_files_outprefixlibnamefastq) then ("-o " +  '"' + write_files_outprefixlibnamefastq + '"') else ""} \
      ~{true="-fastq" false="" fast_q} \
      ~{true="-fasta" false="" fast_a} \
      ~{true="-nolibname" false="" no_libname} \
      ~{true="-noreadname" false="" no_read_name} \
      ~{true="-reverse" false="" reverse} \
      ~{if defined(output_only_read_library) then ("-l " +  '"' + output_only_read_library + '"') else ""} \
      ~{if defined(output_only_single_read) then ("-r " +  '"' + output_only_single_read + '"') else ""} \
      ~{true="-raw" false="" raw} \
      ~{true="-corrected" false="" corrected} \
      ~{true="-trimmed" false="" trimmed} \
      ~{true="-compressed" false="" compressed} \
      ~{true="-normal" false="" normal}
  >>>
  parameter_meta {
    write_files_outprefixlibnamefastq: "write files out-prefix.(libname).fastq, ... if out-prefix is '-', all sequences output to stdout if out-prefix ends in .gz, .bz2 or .xz, output is compressed"
    fast_q: "output is FASTQ format (with extension .fastq, default) (note that QVs are not stored, and are invalid)"
    fast_a: "output is FASTA format (with extension .fasta)"
    no_libname: "don't include the library name in the output file name"
    no_read_name: "don't include the read name in the sequence header.  header will be: '>original-name id=<seqID> clr=<bgn>,<end>   with names '>read<seqID> clr=<bgn>,<end>                without names"
    reverse: "Dump the reverse-complement of the read."
    output_only_read_library: "output only read in library number 'id'"
    output_only_single_read: "[-id]          output only the single read 'id', or the specified range of ids"
    raw: "Dump raw reads."
    corrected: "Dump corrected reads."
    trimmed: "Dump the trimmed version of the raw/corrected read."
    compressed: "Dump the compressed version of the raw/corrected read."
    normal: "Dump the uncompressed version of the raw/corrected read. (for stores that are by default compressing homopolymers)"
  }
}