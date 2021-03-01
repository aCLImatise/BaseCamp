class: CommandLineTool
id: sambamba_view.cwl
inputs:
- id: in_filter
  doc: set custom filter for alignments
  type: string?
  inputBinding:
    prefix: --filter
- id: in_num_filter
  doc: "filter flag bits; 'i1/i2' corresponds to -f i1 -F i2 samtools arguments;\n\
    either of the numbers can be omitted"
  type: long?
  inputBinding:
    prefix: --num-filter
- id: in_format
  doc: "|bam|json|unpack\nspecify which format to use for output (default is SAM);\n\
    unpack streams unpacked BAM"
  type: string?
  inputBinding:
    prefix: --format
- id: in_header
  doc: output only header to stdout (if format=bam, the header is printed as SAM)
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_reference_info
  doc: output to stdout only reference names and lengths in JSON
  type: boolean?
  inputBinding:
    prefix: --reference-info
- id: in_regions
  doc: output only reads overlapping one of regions from the BED file
  type: File?
  inputBinding:
    prefix: --regions
- id: in_count
  doc: output to stdout only count of matching records, hHI are ignored
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_valid
  doc: output only valid alignments
  type: boolean?
  inputBinding:
    prefix: --valid
- id: in_sam_input
  doc: specify that input is in SAM format
  type: boolean?
  inputBinding:
    prefix: --sam-input
- id: in_ref_filename
  doc: specify reference for writing (NA)
  type: File?
  inputBinding:
    prefix: --ref-filename
- id: in_show_progress
  doc: show progressbar in STDERR (works only for BAM files with no regions specified)
  type: boolean?
  inputBinding:
    prefix: --show-progress
- id: in_compression_level
  doc: specify compression level (from 0 to 9, works only for BAM output)
  type: boolean?
  inputBinding:
    prefix: --compression-level
- id: in_output_filename
  doc: specify output filename
  type: File?
  inputBinding:
    prefix: --output-filename
- id: in_n_threads
  doc: maximum number of threads to use
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_subsample
  doc: subsample reads (read pairs)
  type: string?
  inputBinding:
    prefix: --subsample
- id: in_subsampling_seed
  doc: "set seed for subsampling\n"
  type: string?
  inputBinding:
    prefix: --subsampling-seed
- id: in_samba_mba_view
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_bam_vertical_line_input_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_regions
  doc: output only reads overlapping one of regions from the BED file
  type: File?
  outputBinding:
    glob: $(inputs.in_regions)
- id: out_output_filename
  doc: specify output filename
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sambamba:0.8.0--h984e79f_0
cwlVersion: v1.1
baseCommand:
- sambamba
- view
