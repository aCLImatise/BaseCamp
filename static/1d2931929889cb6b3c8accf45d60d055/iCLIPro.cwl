class: CommandLineTool
id: iCLIPro.cwl
inputs:
- id: in_output_folder_default
  doc: output folder (default is cwd - current working directory)
  type: Directory
  inputBinding:
    prefix: -o
- id: in_genomic_bin_size
  doc: 'genomic bin size (100..1000, default: 300)'
  type: long
  inputBinding:
    prefix: -b
- id: in_number_reads_required
  doc: 'number of reads required in bin (20..500, default: 50)'
  type: long
  inputBinding:
    prefix: -r
- id: in_flanking_distances_when
  doc: 'flanking distances when calculating start site overlap ratio (3..15, default:
    5)'
  type: long
  inputBinding:
    prefix: -s
- id: in_use_only_reads
  doc: 'use only reads with minimum mapping quality (mapq) (0..100, default: 10)'
  type: long
  inputBinding:
    prefix: -q
- id: in_read_len_groups
  doc: 'read len groups (e.g.: "A:16-39,A1:16-25,A2:26-32,A3:33-39,L:20,B:42")'
  type: long
  inputBinding:
    prefix: -g
- id: in_generate_read_maps
  doc: "generate read overlap maps based on these\ncomparisons (e.g.: \"A1-A3,A2-A3,A1-B,A2-B,A3-B,L-B,A-B\"\
    )"
  type: long
  inputBinding:
    prefix: -p
- id: in_flanking_region_read
  doc: 'flanking region for read overlap maps (default: 50)'
  type: long
  inputBinding:
    prefix: -f
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder_default
  doc: output folder (default is cwd - current working directory)
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_folder_default)
cwlVersion: v1.1
baseCommand:
- iCLIPro
