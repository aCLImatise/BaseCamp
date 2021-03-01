version 1.0

task IndelHistory {
  input {
    File? msa_format
    Boolean? output_alignment
    File? read_history
    Boolean? i_a_names
    String format_dot
  }
  command <<<
    indelHistory \
      ~{format_dot} \
      ~{if defined(msa_format) then ("--msa-format " +  '"' + msa_format + '"') else ""} \
      ~{if (output_alignment) then "--output-alignment" else ""} \
      ~{if defined(read_history) then ("--read-history " +  '"' + read_history + '"') else ""} \
      ~{if (i_a_names) then "--ia-names" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    msa_format: "|MAF|SS|....\\nRead alignment in specified file format (default FASTA)."
    output_alignment: "Instead of a summary of indels only, output an alignment in FASTA\\nformat of sequences for all ancestral and leaf nodes."
    read_history: "Read an indel history directly from the specified file.  Useful for\\ndebugging.  The alignment and tree arguments are not required;\\nhowever in an alignment is given with --read-history and\\n--output-alignment, then actual bases can be output for leaf\\nspecies."
    i_a_names: "Assume ancestral sequences in alignment.fa are named according to\\nthe convention used by Mathieu Blanchette's inferAncestors program,\\ne.g., \\\"RAT+MOUSE+RABBIT+\\\" for the last common ancestor of \\\"rat\\\",\\n\\\"mouse\\\", and \\\"rabbit\\\"."
    format_dot: "The specified alignment may either contain sequences"
  }
  output {
    File out_stdout = stdout()
    File out_read_history = "${in_read_history}"
  }
}