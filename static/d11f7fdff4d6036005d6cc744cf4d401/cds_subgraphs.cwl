class: CommandLineTool
id: cds_subgraphs.cwl
inputs:
- id: in_output_folder
  doc: output folder to use for GFA files
  type: Directory?
  inputBinding:
    prefix: --output-folder
- id: in_part_desc
  doc: file with partial genes description (.gff)
  type: File?
  inputBinding:
    prefix: --part-desc
- id: in_part_seq
  doc: file with partial genes sequences (.fasta)
  type: File?
  inputBinding:
    prefix: --part-seq
- id: in_graph
  doc: In GFA (ending with .gfa) or prefix to SPAdes graph pack
  type: string?
  inputBinding:
    prefix: --graph
- id: in_cds_len_est
  doc: file with cds length estimamtes
  type: File?
  inputBinding:
    prefix: --cds-len-est
- id: in_kmer_length_use
  doc: k-mer length to use
  type: long?
  inputBinding:
    prefix: -k
- id: in_threads
  doc: '# of threads to use (default: max_threads / 2)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_tmpdir
  doc: "scratch directory to use (default: <outdir>/tmp)\n"
  type: Directory?
  inputBinding:
    prefix: --tmpdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: output folder to use for GFA files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spades:3.15.2--h633aebb_0
cwlVersion: v1.1
baseCommand:
- cds-subgraphs
