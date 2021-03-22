class: CommandLineTool
id: gotree_asr.cwl
inputs:
- id: in_algo
  doc: 'Parsimony algorithm for resolving ambiguities: acctran, deltran, or downpass
    (default "acctran")'
  type: string?
  inputBinding:
    prefix: --algo
- id: in_align
  doc: Alignment input file (default "stdin")
  type: File?
  inputBinding:
    prefix: --align
- id: in_input
  doc: Input tree (default "stdin")
  type: string?
  inputBinding:
    prefix: --input
- id: in_input_strict
  doc: Strict phylip input format (only used with -p)
  type: boolean?
  inputBinding:
    prefix: --input-strict
- id: in_log
  doc: Output log file (default "stdout")
  type: File?
  inputBinding:
    prefix: --log
- id: in_output
  doc: Output file (default "stdout")
  type: File?
  inputBinding:
    prefix: --output
- id: in_phylip
  doc: 'Alignment is in phylip? default : false (Fasta)'
  type: boolean?
  inputBinding:
    prefix: --phylip
- id: in_random_resolve
  doc: 'Random resolve states when several possibilities in: acctran, deltran, or
    downpass'
  type: boolean?
  inputBinding:
    prefix: --random-resolve
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string?
  inputBinding:
    prefix: --format
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: Number of threads (Max=2) (default 1)
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log
  doc: Output log file (default "stdout")
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
- id: out_output
  doc: Output file (default "stdout")
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gotree:0.4.1--h375a9b1_0
cwlVersion: v1.1
baseCommand:
- gotree
- asr
