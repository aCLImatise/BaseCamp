class: CommandLineTool
id: perbase_base_depth.cwl
inputs:
- id: in_mate_fix
  doc: Fix overlapping mates counts, see docs for full details
  type: boolean?
  inputBinding:
    prefix: --mate-fix
- id: in_zero_base
  doc: Output positions as 0-based instead of 1-based
  type: boolean?
  inputBinding:
    prefix: --zero-base
- id: in_bcf_file
  doc: "A BCF/VCF file containing positions of interest. If specified, only bases\
    \ from the given positions will be\nreported on"
  type: File?
  inputBinding:
    prefix: --bcf-file
- id: in_bed_file
  doc: "A BED file containing regions of interest. If specified, only bases from the\
    \ given regions will be reported\non"
  type: File?
  inputBinding:
    prefix: --bed-file
- id: in_channel_size_modifier
  doc: "The fraction of a gigabyte to allocate per thread for message passing, can\
    \ be greater than 1.0 [default:\n0.15]"
  type: long?
  inputBinding:
    prefix: --channel-size-modifier
- id: in_chunksize
  doc: "The ideal number of basepairs each worker receives. Total bp in memory at\
    \ one time is (threads - 2) *\nchunksize [default: 1000000]"
  type: long?
  inputBinding:
    prefix: --chunksize
- id: in_exclude_flags
  doc: 'SAM flags to exclude, recommended 3848 [default: 0]'
  type: long?
  inputBinding:
    prefix: --exclude-flags
- id: in_include_flags
  doc: 'SAM flags to include [default: 0]'
  type: long?
  inputBinding:
    prefix: --include-flags
- id: in_max_depth
  doc: "Set the max depth for a pileup. If a positions depth is within 1% of max-depth\
    \ the `NEAR_MAX_DEPTH` output\nfield will be set to true and that position should\
    \ be viewed as suspect [default: 100000]"
  type: long?
  inputBinding:
    prefix: --max-depth
- id: in_min_mapq
  doc: 'Minimum MAPQ for a read to count toward depth [default: 0]'
  type: long?
  inputBinding:
    prefix: --min-mapq
- id: in_output
  doc: Output path, defaults to stdout
  type: File?
  inputBinding:
    prefix: --output
- id: in_ref_cache_size
  doc: 'Number of Reference Sequences to hold in memory at one time. Smaller will
    decrease mem usage [default: 10]'
  type: long?
  inputBinding:
    prefix: --ref-cache-size
- id: in_ref_fast_a
  doc: Indexed reference fasta, set if using CRAM
  type: string?
  inputBinding:
    prefix: --ref-fasta
- id: in_threads
  doc: 'The number of threads to use [default: 8]'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output path, defaults to stdout
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/perbase:0.6.3--h35a96ae_0
cwlVersion: v1.1
baseCommand:
- perbase
- base-depth
