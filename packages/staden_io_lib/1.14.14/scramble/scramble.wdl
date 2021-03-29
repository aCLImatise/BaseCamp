version 1.0

task Scramble {
  input {
    String? set_input_format
    String? set_output_format
    Int? set_compression_level
    Int? no_compression
    Boolean? _print_header
    String? specifies_refseqstartend_range
    File? specifies_reference_file
    Int? max_bases_slice
    Int? sequences_slice_default
    Int? slices_container_default
    File? specify_format_version
    Boolean? embed_reference_sequence
    Boolean? nonreference_based_encoding
    Boolean? use_multiple_references
    Boolean? generate_md_nm
    Boolean? also_compress_using_coder
    Boolean? also_compress_using_bzip
    Boolean? also_compress_using_lzma
    Boolean? also_compression_using_v
    Boolean? also_compression_using_name
    Boolean? discard_read_names
    Boolean? preserve_aux_incl
    Boolean? preserve_aux_tag
    Boolean? add_scramble_line
    Int? stop_decoding_sequences
    String? use_n_threads
    Boolean? enable_illumina_qualitybinning
    File? convert_using_filegzi
    File? output_bam_index
    String? mode_fast_normal
    String? only_specified_discard
    String? discard_specified_keep
    String? input_file
    String? output_file
  }
  command <<<
    scramble \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(set_input_format) then ("-I " +  '"' + set_input_format + '"') else ""} \
      ~{if defined(set_output_format) then ("-O " +  '"' + set_output_format + '"') else ""} \
      ~{if defined(set_compression_level) then ("-1 " +  '"' + set_compression_level + '"') else ""} \
      ~{if defined(no_compression) then ("-0 " +  '"' + no_compression + '"') else ""} \
      ~{if (_print_header) then "-H" else ""} \
      ~{if defined(specifies_refseqstartend_range) then ("-R " +  '"' + specifies_refseqstartend_range + '"') else ""} \
      ~{if defined(specifies_reference_file) then ("-r " +  '"' + specifies_reference_file + '"') else ""} \
      ~{if defined(max_bases_slice) then ("-b " +  '"' + max_bases_slice + '"') else ""} \
      ~{if defined(sequences_slice_default) then ("-s " +  '"' + sequences_slice_default + '"') else ""} \
      ~{if defined(slices_container_default) then ("-S " +  '"' + slices_container_default + '"') else ""} \
      ~{if defined(specify_format_version) then ("-V " +  '"' + specify_format_version + '"') else ""} \
      ~{if (embed_reference_sequence) then "-e" else ""} \
      ~{if (nonreference_based_encoding) then "-x" else ""} \
      ~{if (use_multiple_references) then "-M" else ""} \
      ~{if (generate_md_nm) then "-m" else ""} \
      ~{if (also_compress_using_coder) then "-a" else ""} \
      ~{if (also_compress_using_bzip) then "-j" else ""} \
      ~{if (also_compress_using_lzma) then "-Z" else ""} \
      ~{if (also_compression_using_v) then "-f" else ""} \
      ~{if (also_compression_using_name) then "-T" else ""} \
      ~{if (discard_read_names) then "-n" else ""} \
      ~{if (preserve_aux_incl) then "-P" else ""} \
      ~{if (preserve_aux_tag) then "-p" else ""} \
      ~{if (add_scramble_line) then "-q" else ""} \
      ~{if defined(stop_decoding_sequences) then ("-N " +  '"' + stop_decoding_sequences + '"') else ""} \
      ~{if defined(use_n_threads) then ("-t " +  '"' + use_n_threads + '"') else ""} \
      ~{if (enable_illumina_qualitybinning) then "-B" else ""} \
      ~{if defined(convert_using_filegzi) then ("-g " +  '"' + convert_using_filegzi + '"') else ""} \
      ~{if defined(output_bam_index) then ("-G " +  '"' + output_bam_index + '"') else ""} \
      ~{if defined(mode_fast_normal) then ("-X " +  '"' + mode_fast_normal + '"') else ""} \
      ~{if defined(only_specified_discard) then ("-d " +  '"' + only_specified_discard + '"') else ""} \
      ~{if defined(discard_specified_keep) then ("-D " +  '"' + discard_specified_keep + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0"
  }
  parameter_meta {
    set_input_format: "Set input format:  \\\"bam\\\", \\\"sam\\\" or \\\"cram\\\"."
    set_output_format: "Set output format: \\\"bam\\\", \\\"sam\\\" or \\\"cram\\\"."
    set_compression_level: "Set compression level."
    no_compression: "No compression."
    _print_header: "[SAM] Do not print header"
    specifies_refseqstartend_range: "[Cram] Specifies the refseq:start-end range"
    specifies_reference_file: "[Cram] Specifies the reference file."
    max_bases_slice: "[Cram] Max. bases per slice, default 5000000."
    sequences_slice_default: "[Cram] Sequences per slice, default 10000."
    slices_container_default: "[Cram] Slices per container, default 1."
    specify_format_version: "[Cram] Specify the file format version to write (eg 1.1, 2.0)"
    embed_reference_sequence: "[Cram] Embed reference sequence."
    nonreference_based_encoding: "[Cram] Non-reference based encoding."
    use_multiple_references: "[Cram] Use multiple references per slice."
    generate_md_nm: "[Cram] Generate MD and NM tags."
    also_compress_using_coder: "[Cram] Also compress using arithmetic coder (V3.1+)."
    also_compress_using_bzip: "[Cram] Also compress using bzip2."
    also_compress_using_lzma: "[Cram] Also compress using lzma."
    also_compression_using_v: "[Cram] Also compression using fqzcomp (V3.1+)"
    also_compression_using_name: "[Cram] Also compression using name tokeniser (V3.1+)"
    discard_read_names: "[Cram] Discard read names where possible."
    preserve_aux_incl: "Preserve all aux tags (incl RG,NM,MD)"
    preserve_aux_tag: "Preserve aux tag sizes ('i', 's', 'c')"
    add_scramble_line: "Don't add scramble @PG header line"
    stop_decoding_sequences: "Stop decoding after 'integer' sequences"
    use_n_threads: "Use N threads (availability varies by format)"
    enable_illumina_qualitybinning: "Enable Illumina 8 quality-binning system (lossy)"
    convert_using_filegzi: "Convert to Bam using index (file.gzi)"
    output_bam_index: "Output Bam index when bam input(file.gzi)"
    mode_fast_normal: "[Cram] Mode is fast, normal, small or archive."
    only_specified_discard: "Keep only specified aux tags (discard the others)"
    discard_specified_keep: "Discard specified aux tags (keep the others)"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}