class: CommandLineTool
id: cath_score_align.cwl
inputs:
- id: in_output_version_information
  doc: '[ --version ]                Output version information'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_res_name_align
  doc: "Align residues by simply matching their names (numbers+insert)\n(for multiple\
    \ models of the same structure)"
  type: boolean
  inputBinding:
    prefix: --res-name-align
- id: in_fast_a_aln_in_file
  doc: Read FASTA alignment from file <file>
  type: File
  inputBinding:
    prefix: --fasta-aln-infile
- id: in_ssap_aln_in_file
  doc: Read SSAP alignment from file <file>
  type: File
  inputBinding:
    prefix: --ssap-aln-infile
- id: in_cora_aln_in_file
  doc: Read CORA alignment from file <file>
  type: File
  inputBinding:
    prefix: --cora-aln-infile
- id: in_ssap_scores_in_file
  doc: "Glue pairwise alignments together using SSAP scores in file <file>\nAssumes\
    \ all .list alignment files in same directory"
  type: File
  inputBinding:
    prefix: --ssap-scores-infile
- id: in_do_the_s_saps
  doc: "[=<dir>(=\"\")]    Do the required SSAPs in directory <dir>; use results as\
    \ with --ssap-scores-infile\nUse a suitable temp directory if none is specified"
  type: boolean
  inputBinding:
    prefix: --do-the-ssaps
- id: in_align_refining
  doc: '(=NO)   Apply <refn> refining to the alignment, one of available values:'
  type: string
  inputBinding:
    prefix: --align-refining
- id: in_pdb_in_file
  doc: Read PDB from file <pdbfile> (may be specified multiple times)
  type: File
  inputBinding:
    prefix: --pdb-infile
- id: in_pdb_s_from_stdin
  doc: 'Read PDBs from stdin (separated by line: "END   ")'
  type: boolean
  inputBinding:
    prefix: --pdbs-from-stdin
- id: in_no
  doc: "- Don't refine the alignment"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cath-score-align
