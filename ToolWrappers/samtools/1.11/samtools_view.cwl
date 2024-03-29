class: CommandLineTool
id: samtools_view.cwl
inputs:
- id: in_output_bam
  doc: output BAM
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_output_cram_requires
  doc: output CRAM (requires -T)
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_use_compression_implies
  doc: use fast BAM compression (implies -b)
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_uncompressed_bam_output
  doc: uncompressed BAM output (implies -b)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_print_sam_header
  doc: print SAM header only (no alignments)
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_print_only_count
  doc: print only the count of matching records
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_output_file_name
  doc: output file name [stdout]
  type: File?
  inputBinding:
    prefix: -o
- id: in_output_reads_selected
  doc: output reads not selected by filters to FILE [null]
  type: File?
  inputBinding:
    prefix: -U
- id: in_file_listing_names
  doc: FILE listing reference names and lengths (see long help) [null]
  type: File?
  inputBinding:
    prefix: -t
- id: in_include_customized_file
  doc: include customized index file
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_only_include_reads_overlapping
  doc: only include reads overlapping this BED FILE [null]
  type: File?
  inputBinding:
    prefix: -L
- id: in_only_include_reads_read_str
  doc: only include reads in read group STR [null]
  type: string?
  inputBinding:
    prefix: -r
- id: in_only_include_reads_read
  doc: only include reads with read group listed in FILE [null]
  type: File?
  inputBinding:
    prefix: -R
- id: in_stronly_include_reads
  doc: ":STR\nonly include reads with tag STR and associated value STR [null]"
  type: string?
  inputBinding:
    prefix: -d
- id: in_fileonly_include_reads
  doc: ":FILE\nonly include reads with tag STR and associated values listed in\nFILE\
    \ [null]"
  type: File?
  inputBinding:
    prefix: -D
- id: in_only_include_reads_mapping_int
  doc: only include reads with mapping quality >= INT [0]
  type: long?
  inputBinding:
    prefix: -q
- id: in_only_include_reads_library_str
  doc: only include reads in library STR [null]
  type: string?
  inputBinding:
    prefix: -l
- id: in_only_include_reads_number_int
  doc: "only include reads with number of CIGAR operations consuming\nquery sequence\
    \ >= INT [0]"
  type: long?
  inputBinding:
    prefix: -m
- id: in_only_include_reads_flags_present
  doc: only include reads with all  of the FLAGs in INT present [0]
  type: long?
  inputBinding:
    prefix: -f
- id: in_only_include_reads_none_present
  doc: only include reads with none of the FLAGS in INT present [0]
  type: long?
  inputBinding:
    prefix: -F
- id: in_only_exclude_reads
  doc: only EXCLUDE reads with all  of the FLAGs in INT present [0]
  type: long?
  inputBinding:
    prefix: -G
- id: in_subsample_reads_given
  doc: "subsample reads (given INT.FRAC option value, 0.FRAC is the\nfraction of templates/read\
    \ pairs to keep; INT part sets seed)"
  type: double?
  inputBinding:
    prefix: -s
- id: in_use_multiregion_iterator
  doc: "use the multi-region iterator (increases the speed, removes\nduplicates and\
    \ outputs the reads as they are ordered in the file)"
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_read_tag_strip
  doc: read tag to strip (repeatable) [null]
  type: string?
  inputBinding:
    prefix: -x
- id: in_collapse_cigar_operation
  doc: collapse the backward CIGAR operation
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_ignored_input_format
  doc: ignored (input format is auto-detected)
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_no_pg
  doc: do not add a PG line
  type: boolean?
  inputBinding:
    prefix: --no-PG
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --input-fmt-option
- id: in_output_fmt
  doc: "[,OPT[=VAL]]...\nSpecify output format (SAM, BAM, CRAM)"
  type: string?
  inputBinding:
    prefix: --output-fmt
- id: in_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --output-fmt-option
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: Number of additional threads to use [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_write_index
  doc: Automatically index the output files [off]
  type: boolean?
  inputBinding:
    prefix: --write-index
- id: in_verbosity
  doc: "Set level of verbosity\n"
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
- id: out_output_reads_selected
  doc: output reads not selected by filters to FILE [null]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_reads_selected)
- id: out_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fmt_option)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samtools:1.11--h6270b1f_0
cwlVersion: v1.1
baseCommand:
- samtools
- view
