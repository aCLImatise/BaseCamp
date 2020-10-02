class: CommandLineTool
id: glam2scan.cwl
inputs:
- id: in_output_directory_will
  doc: ': output directory; will not clobber existing files'
  type: Directory
  inputBinding:
    prefix: -o
- id: in_output_directory_glamscanout
  doc: ': output directory (glam2scan_out); allow clobbering'
  type: Directory
  inputBinding:
    prefix: -O
- id: in_output_text_only
  doc: ': output text only to stdout'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_number_alignments_report
  doc: ': number of alignments to report (25)'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_examine_strands_forward
  doc: ': examine both strands - forward and reverse complement'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in__deletion_pseudocount
  doc: ': deletion pseudocount (0.1)'
  type: boolean
  inputBinding:
    prefix: -D
- id: in__nodeletion_pseudocount
  doc: ': no-deletion pseudocount (2.0)'
  type: boolean
  inputBinding:
    prefix: -E
- id: in__insertion_pseudocount
  doc: ': insertion pseudocount (0.02)'
  type: boolean
  inputBinding:
    prefix: -I
- id: in__noinsertion_pseudocount
  doc: ': no-insertion pseudocount (1.0)'
  type: boolean
  inputBinding:
    prefix: -J
- id: in_dirichlet_mixture_file
  doc: ': Dirichlet mixture file'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_print_version_exit
  doc: ': print version and exit (also accepts --version)'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_alphabet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_my_motif_dot_glam_two
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_my_seqs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_will
  doc: ': output directory; will not clobber existing files'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory_will)
- id: out_output_directory_glamscanout
  doc: ': output directory (glam2scan_out); allow clobbering'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory_glamscanout)
cwlVersion: v1.1
baseCommand:
- glam2scan
