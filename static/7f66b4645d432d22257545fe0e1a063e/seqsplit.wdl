version 1.0

task Seqsplit {
  input {
    File? output_new_file
    String? frag_file
    String? in_format
    String? length
    String? overlap
    Boolean? short_names
    Boolean? options
    String seq_file
  }
  command <<<
    seqsplit \
      ~{seq_file} \
      ~{if defined(output_new_file) then ("-o " +  '"' + output_new_file + '"') else ""} \
      ~{if defined(frag_file) then ("--fragfile " +  '"' + frag_file + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{true="--shortnames" false="" short_names} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    output_new_file: ": output the new FASTA file to <file>"
    frag_file: ": save one-line-per-frag coord summary file to <f>"
    in_format: ": specify sequence file format <s>"
    length: ": set max length of each unique seq frag to <n>"
    overlap: ": set overlap length to <n> (total frag size = length+overlap)"
    short_names: ": use short \"frag1\" names, not \"<src>/<from>-<to>\""
    options: ""
    seq_file: ""
  }
}