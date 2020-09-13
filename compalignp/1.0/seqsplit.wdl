version 1.0

task Seqsplit {
  input {
    File? output_new_fasta
    File? frag_file
    File? in_format
    Int? length
    Int? overlap
    Boolean? short_names
    Boolean? options
    String seq_file
  }
  command <<<
    seqsplit \
      ~{seq_file} \
      ~{if defined(output_new_fasta) then ("-o " +  '"' + output_new_fasta + '"') else ""} \
      ~{if defined(frag_file) then ("--fragfile " +  '"' + frag_file + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if (short_names) then "--shortnames" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    output_new_fasta: ": output the new FASTA file to <file>"
    frag_file: ": save one-line-per-frag coord summary file to <f>"
    in_format: ": specify sequence file format <s>"
    length: ": set max length of each unique seq frag to <n>"
    overlap: ": set overlap length to <n> (total frag size = length+overlap)"
    short_names: ": use short \\\"frag1\\\" names, not \\\"<src>/<from>-<to>\\\""
    options: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_new_fasta = "${in_output_new_fasta}"
  }
}