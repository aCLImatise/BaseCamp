class: CommandLineTool
id: demux_by_barcode_groups.py.cwl
inputs:
- id: in_pooled_fast_x
  doc: "Pooled FASTA/FASTQ (optional, if given, will also\noutput demux fa/fq)\n"
  type: string?
  inputBinding:
    prefix: --pooled_fastx
- id: in_positional_arguments
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_pooled_gff
  doc: Pooled GFF file
  type: string
  inputBinding:
    position: 1
- id: in_demux_count_file
  doc: Demux count file
  type: string
  inputBinding:
    position: 2
- id: in_output_prefix
  doc: Output prefix for GFF outputs
  type: string
  inputBinding:
    position: 3
- id: in_tuples_indicating_barcode
  doc: Tuples indicating barcode grouping
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- demux_by_barcode_groups.py
