version 1.0

task SqStoreDumpFASTQ {
  input {
    Int? write_files_sequences
    Boolean? fast_q
    Boolean? fast_a
    File? no_libname
    Boolean? no_read_name
    Boolean? reverse
    Int? output_only_read_number
    String? output_only_single_read
    Boolean? raw
    Boolean? corrected
    Boolean? trimmed
    Boolean? compressed
    Boolean? normal
  }
  command <<<
    sqStoreDumpFASTQ \
      ~{if defined(write_files_sequences) then ("-S " +  '"' + write_files_sequences + '"') else ""} \
      ~{if (fast_q) then "-fastq" else ""} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (no_libname) then "-nolibname" else ""} \
      ~{if (no_read_name) then "-noreadname" else ""} \
      ~{if (reverse) then "-reverse" else ""} \
      ~{if defined(output_only_read_number) then ("-l " +  '"' + output_only_read_number + '"') else ""} \
      ~{if defined(output_only_single_read) then ("-r " +  '"' + output_only_single_read + '"') else ""} \
      ~{if (raw) then "-raw" else ""} \
      ~{if (corrected) then "-corrected" else ""} \
      ~{if (trimmed) then "-trimmed" else ""} \
      ~{if (compressed) then "-compressed" else ""} \
      ~{if (normal) then "-normal" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_files_sequences: "write files out-prefix.(libname).fastq, ...\\nif out-prefix is '-', all sequences output to stdout\\nif out-prefix ends in .gz, .bz2 or .xz, output is compressed"
    fast_q: "output is FASTQ format (with extension .fastq, default)\\n(note that QVs are not stored, and are invalid)"
    fast_a: "output is FASTA format (with extension .fasta)"
    no_libname: "don't include the library name in the output file name"
    no_read_name: "don't include the read name in the sequence header.  header will be:\\n'>original-name id=<seqID> clr=<bgn>,<end>   with names\\n'>read<seqID> clr=<bgn>,<end>                without names"
    reverse: "Dump the reverse-complement of the read."
    output_only_read_number: "output only read in library number 'id'"
    output_only_single_read: "[-id]          output only the single read 'id', or the specified range of ids"
    raw: "Dump raw reads."
    corrected: "Dump corrected reads."
    trimmed: "Dump the trimmed version of the raw/corrected read."
    compressed: "Dump the compressed version of the raw/corrected read."
    normal: "Dump the uncompressed version of the raw/corrected read.\\n(for stores that are by default compressing homopolymers)"
  }
  output {
    File out_stdout = stdout()
    File out_no_libname = "${in_no_libname}"
  }
}