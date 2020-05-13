class: CommandLineTool
id: cath_score_align.cwl
inputs:
- id: alignment_source
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: protein_file_source
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: superposition_outputs
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: v
  doc: '[ --version ]                Output version information'
  type: boolean
  inputBinding:
    prefix: -v
- id: res_name_align
  doc: Align residues by simply matching their names (numbers+insert) (for multiple
    models of the same structure)
  type: boolean
  inputBinding:
    prefix: --res-name-align
- id: fast_a_aln_in_file
  doc: Read FASTA alignment from file <file>
  type: File
  inputBinding:
    prefix: --fasta-aln-infile
- id: ssap_aln_in_file
  doc: Read SSAP alignment from file <file>
  type: File
  inputBinding:
    prefix: --ssap-aln-infile
- id: cora_aln_in_file
  doc: Read CORA alignment from file <file>
  type: File
  inputBinding:
    prefix: --cora-aln-infile
- id: ssap_scores_in_file
  doc: Glue pairwise alignments together using SSAP scores in file <file> Assumes
    all .list alignment files in same directory
  type: File
  inputBinding:
    prefix: --ssap-scores-infile
- id: do_the_s_saps
  doc: '[=<dir>(="")]    Do the required SSAPs in directory <dir>; use results as
    with --ssap-scores-infile Use a suitable temp directory if none is specified'
  type: boolean
  inputBinding:
    prefix: --do-the-ssaps
- id: align_refining
  doc: "(=NO)   Apply <refn> refining to the alignment, one of available values: NO\
    \    - Don't refine the alignment LIGHT - Refine any alignments with few entries;\
    \ glue alignments one more entry at a time HEAVY - Perform heavy (slow) refining\
    \ on the alignment, including when gluing alignments together This can change\
    \ the method of gluing alignments under --ssap-scores-infile and --do-the-ssaps"
  type: string
  inputBinding:
    prefix: --align-refining
- id: pdb_in_file
  doc: Read PDB from file <pdbfile> (may be specified multiple times)
  type: string
  inputBinding:
    prefix: --pdb-infile
- id: pdb_s_from_stdin
  doc: 'Read PDBs from stdin (separated by line: "END   ")'
  type: boolean
  inputBinding:
    prefix: --pdbs-from-stdin
outputs: []
cwlVersion: v1.1
baseCommand:
- cath-score-align
