class: CommandLineTool
id: knot.cwl
inputs:
- id: in_contigs
  doc: fasta file than contains contigs
  type: File?
  inputBinding:
    prefix: --contigs
- id: in_contigs_graph
  doc: contigs graph
  type: string?
  inputBinding:
    prefix: --contigs_graph
- id: in_raw_reads
  doc: read used for assembly
  type: string?
  inputBinding:
    prefix: --raw-reads
- id: in_correct_reads
  doc: read used for assembly
  type: string?
  inputBinding:
    prefix: --correct-reads
- id: in_output
  doc: output prefix
  type: string?
  inputBinding:
    prefix: --output
- id: in_search_mode
  doc: "what path search optimize, number of base or number of\nnode"
  type: string?
  inputBinding:
    prefix: --search-mode
- id: in_contig_min_length
  doc: contig with size lower this parameter are ignored
  type: long?
  inputBinding:
    prefix: --contig-min-length
- id: in_read_type
  doc: type of input read, default pb
  type: string?
  inputBinding:
    prefix: --read-type
- id: in_self_lookup
  doc: if it set knot search path between extremity of same
  type: boolean?
  inputBinding:
    prefix: --self-lookup
- id: in_contig
  doc: --help-all            show knot help and snakemake help
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0
cwlVersion: v1.1
baseCommand:
- knot
