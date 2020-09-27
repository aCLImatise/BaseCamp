class: CommandLineTool
id: pe_utils.cwl
inputs:
- id: in_compute_insert_len
  doc: "Compute insert length for given sample. Takes as input\n(1) a comma-separated\
    \ list of sorted, indexed BAM\nfiles with headers (or a single BAM filename),\
    \ (2) a\nGFF file with constitutive exons. Outputs the insert\nlength distribution\
    \ into the output directory."
  type: long
  inputBinding:
    prefix: --compute-insert-len
- id: in_no_bam_filter
  doc: "If provided, this ignores the BAM file flags that\nstate whether the read\
    \ was paired or not, and instead\nuses only the read IDs to pair up the mates.\
    \ Use this\nif your paired-end BAM was the result of a samtools\nmerge operation."
  type: boolean
  inputBinding:
    prefix: --no-bam-filter
- id: in_min_exon_size
  doc: "Minimum size of constitutive exon (in nucleotides)\nthat should be used in\
    \ the computation. Default is 500\nbp."
  type: long
  inputBinding:
    prefix: --min-exon-size
- id: in_sd_max
  doc: "Number of standard deviations used to define outliers.\nBy default, set to\
    \ 2, meaning that any points at least\n2*sigma away from the mean of the insert\
    \ length\ndistribution will be discarded."
  type: long
  inputBinding:
    prefix: --sd-max
- id: in_output_dir
  doc: "Output directory.\n"
  type: Directory
  inputBinding:
    prefix: --output-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory.\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- pe_utils
