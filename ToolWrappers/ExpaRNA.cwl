class: CommandLineTool
id: ExpaRNA.cwl
inputs:
- id: in_minmal_size_epm
  doc: "#   : # minmal size of an EPM (gamma)\n2 is default and returns all EPMs with\
    \ at least 2 nucleotides"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_determines_maximal_number
  doc: "#   : # determines the maximal number of returned EPMs\n0 is default an returns\
    \ all EPMs\n1 is the largest EPM and so on..."
  type: boolean
  inputBinding:
    prefix: -n
- id: in_initial_epm_score
  doc: "#   : 1: initial EPM score = EPM size (default)\n: 2: initial EPM score =\
    \ (EPM size)^2 (prefers larger patterns in LCS-EPM)"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_not_ignore_gaps
  doc: ': Do NOT ignore gaps in input sequences'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_write_output_dir
  doc: '#   : write all output to dir <#>'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_write_lcsepm_alignment
  doc: ": write LCS-EPM into file 'LCSEPM_align.aln' as alignment"
  type: boolean
  inputBinding:
    prefix: -o
- id: in_write_lcsepm_constraint
  doc: ": write LCS-EPM into file 'LCSEPM_LocARNA_input.fa' as constraint input for\
    \ LocARNA"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_write_lcsepm_single
  doc: ": write LCS-EPM into file 'LCSEPM.epm' as single EPMs"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_write_epms_file
  doc: ": write all EPMs into file 'allEPM.epm' (depends on -s/ -n)"
  type: boolean
  inputBinding:
    prefix: -a
- id: in_do_not_save
  doc: ': DO NOT save LCS-EPM as colored postscript file'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_determine_similaritydifferences_alignmentvia
  doc: ": determine similarity/differences of LCS-EPM with reference alignment\nvia\
    \ two colored postscript files"
  type: boolean
  inputBinding:
    prefix: -A
- id: in__verbose_output
  doc: ': verbose output'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ExpaRNA
