class: CommandLineTool
id: haslr_assemble.cwl
inputs:
- id: in_path_contigs_file
  doc: Path to contigs file (also --contig)
  type: File?
  inputBinding:
    prefix: -c
- id: in_path_long_read
  doc: Path to long read dataset (also --long)
  type: File?
  inputBinding:
    prefix: -l
- id: in_path_mappings_long
  doc: Path to mappings of long reads onto contigs (also --mapping)
  type: File?
  inputBinding:
    prefix: -m
- id: in_path_output_directory
  doc: Path to the output directory (also --dir)
  type: File?
  inputBinding:
    prefix: -d
- id: in_aln_block
  doc: Minimum length of alignment block [500]
  type: boolean?
  inputBinding:
    prefix: --aln-block
- id: in_aln_sim
  doc: Minimum alignment similarity [0.85]
  type: boolean?
  inputBinding:
    prefix: --aln-sim
- id: in_uniq_dev
  doc: Maximum deviation from mean frequency of uniq contigs [0.15]
  type: boolean?
  inputBinding:
    prefix: --uniq-dev
- id: in_edge_sup
  doc: Minimum number of long read supporting each edge [3]
  type: boolean?
  inputBinding:
    prefix: --edge-sup
- id: in_number_cpu_cores
  doc: Number of CPU cores to use (also --threads)
  type: long?
  inputBinding:
    prefix: -t
- id: in_long_fof_n
  doc: The file passed by -l is fofn
  type: boolean?
  inputBinding:
    prefix: --long-fofn
- id: in_mapping_fof_n
  doc: The file passed by -m is fofn
  type: boolean?
  inputBinding:
    prefix: --mapping-fofn
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -s
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_detects_v
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_directory
  doc: Path to the output directory (also --dir)
  type: File?
  outputBinding:
    glob: $(inputs.in_path_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- haslr_assemble
