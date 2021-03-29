class: CommandLineTool
id: scramble.cwl
inputs:
- id: in_set_input_format
  doc: 'Set input format:  "bam", "sam" or "cram".'
  type: string?
  inputBinding:
    prefix: -I
- id: in_set_output_format
  doc: 'Set output format: "bam", "sam" or "cram".'
  type: string?
  inputBinding:
    prefix: -O
- id: in_set_compression_level
  doc: Set compression level.
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_no_compression
  doc: No compression.
  type: long?
  inputBinding:
    prefix: '-0'
- id: in__print_header
  doc: '[SAM] Do not print header'
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_specifies_refseqstartend_range
  doc: '[Cram] Specifies the refseq:start-end range'
  type: string?
  inputBinding:
    prefix: -R
- id: in_specifies_reference_file
  doc: '[Cram] Specifies the reference file.'
  type: File?
  inputBinding:
    prefix: -r
- id: in_max_bases_slice
  doc: '[Cram] Max. bases per slice, default 5000000.'
  type: long?
  inputBinding:
    prefix: -b
- id: in_sequences_slice_default
  doc: '[Cram] Sequences per slice, default 10000.'
  type: long?
  inputBinding:
    prefix: -s
- id: in_slices_container_default
  doc: '[Cram] Slices per container, default 1.'
  type: long?
  inputBinding:
    prefix: -S
- id: in_specify_format_version
  doc: '[Cram] Specify the file format version to write (eg 1.1, 2.0)'
  type: File?
  inputBinding:
    prefix: -V
- id: in_embed_reference_sequence
  doc: '[Cram] Embed reference sequence.'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_nonreference_based_encoding
  doc: '[Cram] Non-reference based encoding.'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_use_multiple_references
  doc: '[Cram] Use multiple references per slice.'
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_generate_md_nm
  doc: '[Cram] Generate MD and NM tags.'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_also_compress_using_coder
  doc: '[Cram] Also compress using arithmetic coder (V3.1+).'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_also_compress_using_bzip
  doc: '[Cram] Also compress using bzip2.'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_also_compress_using_lzma
  doc: '[Cram] Also compress using lzma.'
  type: boolean?
  inputBinding:
    prefix: -Z
- id: in_also_compression_using_v
  doc: '[Cram] Also compression using fqzcomp (V3.1+)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_also_compression_using_name
  doc: '[Cram] Also compression using name tokeniser (V3.1+)'
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_discard_read_names
  doc: '[Cram] Discard read names where possible.'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_preserve_aux_incl
  doc: Preserve all aux tags (incl RG,NM,MD)
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_preserve_aux_tag
  doc: Preserve aux tag sizes ('i', 's', 'c')
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_add_scramble_line
  doc: Don't add scramble @PG header line
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_stop_decoding_sequences
  doc: Stop decoding after 'integer' sequences
  type: long?
  inputBinding:
    prefix: -N
- id: in_use_n_threads
  doc: Use N threads (availability varies by format)
  type: string?
  inputBinding:
    prefix: -t
- id: in_enable_illumina_qualitybinning
  doc: Enable Illumina 8 quality-binning system (lossy)
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_convert_using_filegzi
  doc: Convert to Bam using index (file.gzi)
  type: File?
  inputBinding:
    prefix: -g
- id: in_output_bam_index
  doc: Output Bam index when bam input(file.gzi)
  type: File?
  inputBinding:
    prefix: -G
- id: in_mode_fast_normal
  doc: '[Cram] Mode is fast, normal, small or archive.'
  type: string?
  inputBinding:
    prefix: -X
- id: in_only_specified_discard
  doc: Keep only specified aux tags (discard the others)
  type: string?
  inputBinding:
    prefix: -d
- id: in_discard_specified_keep
  doc: Discard specified aux tags (keep the others)
  type: string?
  inputBinding:
    prefix: -D
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0
cwlVersion: v1.1
baseCommand:
- scramble
