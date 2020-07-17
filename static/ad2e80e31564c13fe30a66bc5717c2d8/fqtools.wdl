version 1.0

task Fqtools {
  input {
    Boolean? show_program_version
    Boolean? allow_dna_sequence_bases
    Boolean? allow_rna_sequence_bases
    Boolean? allow_ambiguous_bases
    Boolean? allow_sequence_base
    Boolean? allow_uppercase_sequence_bases
    Boolean? allow_lowercase_sequence_bases
    String? set_replacement_default
    String? set_input_size
    String? set_output_size
    String? set_score_encoding
    String? set_input_format
    String? set_file_format
    Boolean? read_interleaved_pairs
    Boolean? write_file_pairs
    Boolean? hv_dram_uli
  }
  command <<<
    fqtools \
      ~{true="-v" false="" show_program_version} \
      ~{true="-d" false="" allow_dna_sequence_bases} \
      ~{true="-r" false="" allow_rna_sequence_bases} \
      ~{true="-a" false="" allow_ambiguous_bases} \
      ~{true="-m" false="" allow_sequence_base} \
      ~{true="-u" false="" allow_uppercase_sequence_bases} \
      ~{true="-l" false="" allow_lowercase_sequence_bases} \
      ~{if defined(set_replacement_default) then ("-p " +  '"' + set_replacement_default + '"') else ""} \
      ~{if defined(set_input_size) then ("-b " +  '"' + set_input_size + '"') else ""} \
      ~{if defined(set_output_size) then ("-B " +  '"' + set_output_size + '"') else ""} \
      ~{if defined(set_score_encoding) then ("-q " +  '"' + set_score_encoding + '"') else ""} \
      ~{if defined(set_input_format) then ("-f " +  '"' + set_input_format + '"') else ""} \
      ~{if defined(set_file_format) then ("-F " +  '"' + set_file_format + '"') else ""} \
      ~{true="-i" false="" read_interleaved_pairs} \
      ~{true="-I" false="" write_file_pairs} \
      ~{true="-hvdramuli" false="" hv_dram_uli}
  >>>
  parameter_meta {
    show_program_version: "Show the program version and exit."
    allow_dna_sequence_bases: "Allow DNA sequence bases       (ACGTN)"
    allow_rna_sequence_bases: "Allow RNA sequence bases       (ACGUN)"
    allow_ambiguous_bases: "Allow ambiguous sequence bases (RYKMSWBDHV)"
    allow_sequence_base: "Allow mask sequence base       (X)"
    allow_uppercase_sequence_bases: "Allow uppercase sequence bases"
    allow_lowercase_sequence_bases: "Allow lowercase sequence bases"
    set_replacement_default: "Set the pair replacement character (default \"%\")"
    set_input_size: "Set the input buffer size"
    set_output_size: "Set the output buffer size"
    set_score_encoding: "Set the quality score encoding"
    set_input_format: "Set the input file format"
    set_file_format: "Set the output file format"
    read_interleaved_pairs: "Read interleaved input file pairs"
    write_file_pairs: "Write interleaved output file pairs"
    hv_dram_uli: ""
  }
}