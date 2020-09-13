version 1.0

task Fqtools {
  input {
    Boolean? show_program_version
    Boolean? allow_bases_acgtn
    Boolean? allow_rna_bases
    Boolean? allow_bases_rykmswbdhv
    Boolean? allow_mask_base
    Boolean? allow_uppercase_bases
    Boolean? allow_sequence_bases
    String? set_replacement_default
    Int? set_input_size
    Int? set_buffer_size
    String? set_score_encoding
    File? set_input_format
    File? set_file_format
    Boolean? read_interleaved_pairs
    File? write_interleaved_pairs
    Boolean? hv_dram_uli
  }
  command <<<
    fqtools \
      ~{if (show_program_version) then "-v" else ""} \
      ~{if (allow_bases_acgtn) then "-d" else ""} \
      ~{if (allow_rna_bases) then "-r" else ""} \
      ~{if (allow_bases_rykmswbdhv) then "-a" else ""} \
      ~{if (allow_mask_base) then "-m" else ""} \
      ~{if (allow_uppercase_bases) then "-u" else ""} \
      ~{if (allow_sequence_bases) then "-l" else ""} \
      ~{if defined(set_replacement_default) then ("-p " +  '"' + set_replacement_default + '"') else ""} \
      ~{if defined(set_input_size) then ("-b " +  '"' + set_input_size + '"') else ""} \
      ~{if defined(set_buffer_size) then ("-B " +  '"' + set_buffer_size + '"') else ""} \
      ~{if defined(set_score_encoding) then ("-q " +  '"' + set_score_encoding + '"') else ""} \
      ~{if defined(set_input_format) then ("-f " +  '"' + set_input_format + '"') else ""} \
      ~{if defined(set_file_format) then ("-F " +  '"' + set_file_format + '"') else ""} \
      ~{if (read_interleaved_pairs) then "-i" else ""} \
      ~{if (write_interleaved_pairs) then "-I" else ""} \
      ~{if (hv_dram_uli) then "-hvdramuli" else ""}
  >>>
  parameter_meta {
    show_program_version: "Show the program version and exit."
    allow_bases_acgtn: "Allow DNA sequence bases       (ACGTN)"
    allow_rna_bases: "Allow RNA sequence bases       (ACGUN)"
    allow_bases_rykmswbdhv: "Allow ambiguous sequence bases (RYKMSWBDHV)"
    allow_mask_base: "Allow mask sequence base       (X)"
    allow_uppercase_bases: "Allow uppercase sequence bases"
    allow_sequence_bases: "Allow lowercase sequence bases"
    set_replacement_default: "Set the pair replacement character (default \\\"%\\\")"
    set_input_size: "Set the input buffer size"
    set_buffer_size: "Set the output buffer size"
    set_score_encoding: "Set the quality score encoding"
    set_input_format: "Set the input file format"
    set_file_format: "Set the output file format"
    read_interleaved_pairs: "Read interleaved input file pairs"
    write_interleaved_pairs: "Write interleaved output file pairs"
    hv_dram_uli: ""
  }
  output {
    File out_stdout = stdout()
    File out_set_file_format = "${in_set_file_format}"
    File out_write_interleaved_pairs = "${in_write_interleaved_pairs}"
  }
}