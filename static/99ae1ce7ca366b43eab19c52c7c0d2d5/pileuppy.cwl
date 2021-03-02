class: CommandLineTool
id: pileuppy.cwl
inputs:
- id: in_fast_a_ref
  doc: 'Optional: Input reference indexed FASTA file.'
  type: File?
  inputBinding:
    prefix: --fasta-ref
- id: in_output
  doc: 'Optional: Output file [stdout]. Disables colors.'
  type: File?
  inputBinding:
    prefix: --output
- id: in_region
  doc: "Required: pileup region in one of the following formats:\nchrom:pos - pileup\
    \ of a single position,\nchrom:start-end - closed interval, 1-based positions,\n\
    chrom:pos^size - same as chrom:[pos - size]-[pos + size]."
  type: long?
  inputBinding:
    prefix: --region
- id: in_display
  doc: "Display additional INT positions around the region.\nOnly displays reads that\
    \ cover <region>."
  type: long?
  inputBinding:
    prefix: --display
- id: in_size
  doc: '|none       Split region longer than INT [150].'
  type: long?
  inputBinding:
    prefix: --size
- id: in_min_mapq
  doc: Skip alignments with mapQ less than INT [0].
  type: long?
  inputBinding:
    prefix: --min-mapq
- id: in_min_bq
  doc: Print ? instead of base pairs with quality less than INT [0].
  type: long?
  inputBinding:
    prefix: --min-bq
- id: in_req_flags
  doc: 'Required flags: skip reads with mask bits unset [0].'
  type: long?
  inputBinding:
    prefix: --req-flags
- id: in_filt_flags
  doc: 'Filter flags: skip reads with mask bits set [1796].'
  type: long?
  inputBinding:
    prefix: --filt-flags
- id: in_only_use_reads
  doc: "[STR [STR ...]], --samples [STR [STR ...]]\nOnly use reads with matching samples.\
    \ You can use multiple regex patterns\nor exact sample names. Pattern must match\
    \ the sample name from start to end."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_join_samples
  doc: Do not split single BAM/CRAM file into multiple columns with different samples.
  type: boolean?
  inputBinding:
    prefix: --join-samples
- id: in_skip_bq
  doc: Do not print base qualities.
  type: boolean?
  inputBinding:
    prefix: --skip-bq
- id: in_show_names
  doc: Print read names in the header.
  type: boolean?
  inputBinding:
    prefix: --show-names
- id: in_header
  doc: "|comment|plain\nHow to write headers. If comment, every header line will start\
    \ with \"#\"."
  type: string?
  inputBinding:
    prefix: --header
- id: in_skip_legend
  doc: Do not write legend.
  type: boolean?
  inputBinding:
    prefix: --skip-legend
- id: in_skip_empty
  doc: Skip lines with zero coverage
  type: boolean?
  inputBinding:
    prefix: --skip-empty
- id: in_skip_chrom
  doc: Do not show chromosome name
  type: boolean?
  inputBinding:
    prefix: --skip-chrom
- id: in_ansiwhiteblack__scheme
  doc: "|ansi|white|black, --scheme none|ansi|white|black\nPossible color schemes:\n\
    none - no colors (default if -o FILE),\nansi - 16 colors,\nwhite - 256 colors\
    \ with white background,\nblack - 256 colors with black background (default unless\
    \ -o FILE)."
  type: File?
  inputBinding:
    prefix: -S
- id: in_no_logo
  doc: Do not use logo colors for nucleotides.
  type: boolean?
  inputBinding:
    prefix: --no-logo
- id: in_no_columns
  doc: Do not highlight columns with a different color.
  type: boolean?
  inputBinding:
    prefix: --no-columns
- id: in_file
  doc: "Required: Input indexed BAM/CRAM files. Allows format name=path,\nin that\
    \ case name will be displayed in pileup instead of filename."
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Optional: Output file [stdout]. Disables colors.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pileuppy:1.1.1--py_0
cwlVersion: v1.1
baseCommand:
- pileuppy
