class: CommandLineTool
id: haploflow.cwl
inputs:
- id: in_read_file
  doc: read file (fastq)
  type: File?
  inputBinding:
    prefix: --read-file
- id: in_dump_file
  doc: deBruijn graph dump file produced by
  type: File?
  inputBinding:
    prefix: --dump-file
- id: in_kmer_size_default
  doc: (=41)                    k-mer size, default 41, please use an odd
  type: long?
  inputBinding:
    prefix: --k
- id: in_create_dump
  doc: "create dump of the deBruijn graph. WARNING:\nThis file may be huge"
  type: File?
  inputBinding:
    prefix: --create-dump
- id: in_from_dump
  doc: run from a Haploflow dump of the deBruijn
  type: string?
  inputBinding:
    prefix: --from-dump
- id: in_strict
  doc: "(=1)                more strict error correction, should be set\nto 5 in first\
    \ run on new data set to reduce\nrun time. Set to 0 if low abundant strains\n\
    are expected to be present"
  type: long?
  inputBinding:
    prefix: --strict
- id: in_filter
  doc: (=500)              filter contigs shorter than value
  type: long?
  inputBinding:
    prefix: --filter
- id: in_thresh
  doc: "(=-1)               Provide a custom threshold for complex/bad\ndata\n"
  type: long?
  inputBinding:
    prefix: --thresh
- id: in_haplo_flow
  doc: '--log arg                        log file (default: standard out)'
  type: string
  inputBinding:
    position: 0
- id: in_number
  doc: '--out arg                        folder for output, will be created if not '
  type: long
  inputBinding:
    position: 1
- id: in_overwritten
  doc: '--error-rate arg (=0.0199999996) percentage filter for erroneous kmers - '
  type: string
  inputBinding:
    position: 0
- id: in_graph_dot
  doc: --two-strain arg (=0)            mode for known two-strain mixtures
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/haploflow:0.1--hee3b9ab_0
cwlVersion: v1.1
baseCommand:
- haploflow
