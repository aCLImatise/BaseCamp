class: CommandLineTool
id: MethylDackel_perRead.cwl
inputs:
- id: in_minimum_mapq_threshold
  doc: Minimum MAPQ threshold to include an alignment (default 10)
  type: long?
  inputBinding:
    prefix: -q
- id: in_minimum_phred_threshold
  doc: Minimum Phred threshold to include a base (default 5). This must             be
    >0.
  type: long?
  inputBinding:
    prefix: -p
- id: in_region_string_extract
  doc: Region string in which to extract methylation
  type: string?
  inputBinding:
    prefix: -r
- id: in_bed_file_listing
  doc: A BED file listing regions for inclusion.
  type: File?
  inputBinding:
    prefix: -l
- id: in_keep_strand
  doc: "If a BED file is specified, then this option will cause the\nstrand column\
    \ (column 6) to be utilized, if present. Thus, if\na region has a '+' in this\
    \ column, then only metrics from the\ntop strand will be output. Note that the\
    \ -r option can be used\nto limit the regions of -l."
  type: File?
  inputBinding:
    prefix: --keepStrand
- id: in_output_file_name
  doc: Output file name [stdout]
  type: File?
  inputBinding:
    prefix: -o
- id: in_ignore_flags
  doc: "By default, all reads are output. If you would like to\nignore certain classes\
    \ of reads then simply give a value for their\nflags here. Note that an alignment\
    \ will be logically anded with this\nflag, so a single bit overlap will lead to\
    \ exclusion. The default\nfor this is 0."
  type: boolean?
  inputBinding:
    prefix: --ignoreFlags
- id: in_require_flags
  doc: "Require each alignment to have all bits in this value\npresent, or else the\
    \ alignment is ignored. This is equivalent to the\n-f option in samtools. The\
    \ default is 0, which includes all\nalignments."
  type: boolean?
  inputBinding:
    prefix: --requireFlags
- id: in_at
  doc: The number of threads to use, the default 1
  type: long?
  inputBinding:
    prefix: -@
- id: in_chunksize
  doc: "The size of the genome processed by a single thread at a time.\nThe default\
    \ is 1000000 bases. This value MUST be at least 1."
  type: long?
  inputBinding:
    prefix: --chunkSize
- id: in_ref_dot_fa
  doc: "Reference genome in fasta format. This must be indexed with\nsamtools faidx"
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: An input BAM or CRAM file. This MUST be sorted and should be indexed.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_keep_strand
  doc: "If a BED file is specified, then this option will cause the\nstrand column\
    \ (column 6) to be utilized, if present. Thus, if\na region has a '+' in this\
    \ column, then only metrics from the\ntop strand will be output. Note that the\
    \ -r option can be used\nto limit the regions of -l."
  type: File?
  outputBinding:
    glob: $(inputs.in_keep_strand)
- id: out_output_file_name
  doc: Output file name [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- MethylDackel
- perRead
