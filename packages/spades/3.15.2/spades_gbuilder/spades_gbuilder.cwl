class: CommandLineTool
id: spades_gbuilder.cwl
inputs:
- id: in_kmer_length_use
  doc: k-mer length to use
  type: long?
  inputBinding:
    prefix: -k
- id: in_infer_coverage
  doc: infer coverage
  type: boolean?
  inputBinding:
    prefix: -c
- id: in__threads_use
  doc: '# of threads to use'
  type: string?
  inputBinding:
    prefix: -t
- id: in_tmp_dir
  doc: scratch directory to use
  type: Directory?
  inputBinding:
    prefix: -tmp-dir
- id: in_sorting_buffer_size
  doc: sorting buffer size, per thread
  type: long?
  inputBinding:
    prefix: -b
- id: in_unit_igs
  doc: produce unitigs (default)
  type: boolean?
  inputBinding:
    prefix: --unitigs
- id: in_fast_g
  doc: produce graph in FASTG format
  type: boolean?
  inputBinding:
    prefix: --fastg
- id: in_gfa
  doc: produce graph in GFA1 format
  type: boolean?
  inputBinding:
    prefix: --gfa
- id: in_spades
  doc: produce graph in SPAdes internal format
  type: boolean?
  inputBinding:
    prefix: --spades
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spades:3.15.2--h633aebb_0
cwlVersion: v1.1
baseCommand:
- spades-gbuilder
