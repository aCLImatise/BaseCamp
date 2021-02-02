version 1.0

task SqStoreDumpFASTQ {
  input {
    File? o_outprefix_write
    Boolean? reverse
    Boolean? raw
    Boolean? corrected
    Boolean? trimmed
    Boolean? compressed
    Boolean? normal
  }
  command <<<
    sqStoreDumpFASTQ \
      ~{if defined(o_outprefix_write) then ("-S " +  '"' + o_outprefix_write + '"') else ""} \
      ~{if (reverse) then "-reverse" else ""} \
      ~{if (raw) then "-raw" else ""} \
      ~{if (corrected) then "-corrected" else ""} \
      ~{if (trimmed) then "-trimmed" else ""} \
      ~{if (compressed) then "-compressed" else ""} \
      ~{if (normal) then "-normal" else ""}
  >>>
  parameter_meta {
    o_outprefix_write: "-o out-prefix       write files out-prefix.(libname).fastq, ...\\nif out-prefix is '-', all sequences output to stdout\\nif out-prefix ends in .gz, .bz2 or .xz, output is compressed\\n-fastq              output is FASTQ format (with extension .fastq, default)\\n(note that QVs are not stored, and are invalid)\\n-fasta              output is FASTA format (with extension .fasta)\\n-nolibname          don't include the library name in the output file name\\n-noreadname         don't include the read name in the sequence header.  header will be:\\n'>original-name id=<seqID> clr=<bgn>,<end>   with names\\n'>read<seqID> clr=<bgn>,<end>                without names"
    reverse: "Dump the reverse-complement of the read.\\n-l id               output only read in library number 'id'\\n-r id[-id]          output only the single read 'id', or the specified range of ids"
    raw: "Dump raw reads."
    corrected: "Dump corrected reads."
    trimmed: "Dump the trimmed version of the raw/corrected read."
    compressed: "Dump the compressed version of the raw/corrected read."
    normal: "Dump the uncompressed version of the raw/corrected read.\\n(for stores that are by default compressing homopolymers)"
  }
  output {
    File out_stdout = stdout()
    File out_o_outprefix_write = "${in_o_outprefix_write}"
  }
}