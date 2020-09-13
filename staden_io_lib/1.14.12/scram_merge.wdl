version 1.0

task ScramMerge {
  input {
    String? set_input_format
    String? set_output_format
    Int? set_zlib_compression
    Int? no_zlib_compression
    String? specifies_refseqstartend_range
    File? specifies_reference_file
    Int? sequences_slice_default
    Int? slices_container_default
    File? specify_format_version
    Boolean? embed_reference_sequence
    String input_file
  }
  command <<<
    scram_merge \
      ~{input_file} \
      ~{if defined(set_input_format) then ("-I " +  '"' + set_input_format + '"') else ""} \
      ~{if defined(set_output_format) then ("-O " +  '"' + set_output_format + '"') else ""} \
      ~{if defined(set_zlib_compression) then ("-1 " +  '"' + set_zlib_compression + '"') else ""} \
      ~{if defined(no_zlib_compression) then ("-0 " +  '"' + no_zlib_compression + '"') else ""} \
      ~{if defined(specifies_refseqstartend_range) then ("-R " +  '"' + specifies_refseqstartend_range + '"') else ""} \
      ~{if defined(specifies_reference_file) then ("-r " +  '"' + specifies_reference_file + '"') else ""} \
      ~{if defined(sequences_slice_default) then ("-s " +  '"' + sequences_slice_default + '"') else ""} \
      ~{if defined(slices_container_default) then ("-S " +  '"' + slices_container_default + '"') else ""} \
      ~{if defined(specify_format_version) then ("-V " +  '"' + specify_format_version + '"') else ""} \
      ~{if (embed_reference_sequence) then "-X" else ""}
  >>>
  parameter_meta {
    set_input_format: "Set input format:  \\\"bam\\\", \\\"sam\\\" or \\\"cram\\\"."
    set_output_format: "Set output format: \\\"bam\\\", \\\"sam\\\" or \\\"cram\\\"."
    set_zlib_compression: "Set zlib compression level."
    no_zlib_compression: "No zlib compression."
    specifies_refseqstartend_range: "[Cram] Specifies the refseq:start-end range"
    specifies_reference_file: "[Cram] Specifies the reference file."
    sequences_slice_default: "[Cram] Sequences per slice, default 10000."
    slices_container_default: "[Cram] Slices per container, default 1."
    specify_format_version: "[Cram] Specify the file format version to write (eg 1.1, 2.0)"
    embed_reference_sequence: "[Cram] Embed reference sequence."
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}