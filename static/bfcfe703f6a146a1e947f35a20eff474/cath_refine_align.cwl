class: CommandLineTool
id: cath_refine_align.cwl
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
  doc: '[ --version ]                   Output version information'
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
  doc: '[=<dir>(="")]       Do the required SSAPs in directory <dir>; use results
    as with --ssap-scores-infile Use a suitable temp directory if none is specified'
  type: boolean
  inputBinding:
    prefix: --do-the-ssaps
- id: align_refining
  doc: "(=HEAVY)   Apply <refn> refining to the alignment, one of available values:\
    \ NO    - Don't refine the alignment LIGHT - Refine any alignments with few entries;\
    \ glue alignments one more entry at a time HEAVY - Perform heavy (slow) refining\
    \ on the alignment, including when gluing alignments together This can change\
    \ the method of gluing alignments under --ssap-scores-infile and --do-the-ssaps"
  type: string
  inputBinding:
    prefix: --align-refining
- id: id
  doc: Structure ids
  type: string
  inputBinding:
    prefix: --id
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
- id: align_regions
  doc: 'Handle region(s) <regions> as the alignment part of the structure. May be
    specified multiple times, in correspondence with the structures. Format is: D[5inwB02]251-348:B,408-416A:B
    (Put <regions> in quotes to prevent the square brackets confusing your shell ("No
    match"))'
  type: string
  inputBinding:
    prefix: --align-regions
- id: aln_to_cath_aln_file
  doc: '[EXPERIMENTAL] Write the alignment to a CATH alignment file'
  type: string
  inputBinding:
    prefix: --aln-to-cath-aln-file
- id: aln_to_cath_aln_stdout
  doc: '[EXPERIMENTAL] Print the alignment to stdout in CATH alignment format'
  type: boolean
  inputBinding:
    prefix: --aln-to-cath-aln-stdout
- id: aln_to_fast_a_file
  doc: Write the alignment to a FASTA file
  type: string
  inputBinding:
    prefix: --aln-to-fasta-file
- id: aln_to_fast_a_stdout
  doc: Print the alignment to stdout in FASTA format
  type: boolean
  inputBinding:
    prefix: --aln-to-fasta-stdout
- id: aln_to_ssap_file
  doc: Write the alignment to a SSAP file
  type: string
  inputBinding:
    prefix: --aln-to-ssap-file
- id: aln_to_ssap_stdout
  doc: Print the alignment to stdout as SSAP
  type: boolean
  inputBinding:
    prefix: --aln-to-ssap-stdout
- id: aln_to_html_file
  doc: Write the alignment to a HTML file
  type: string
  inputBinding:
    prefix: --aln-to-html-file
- id: aln_to_html_stdout
  doc: Print the alignment to stdout as HTML
  type: boolean
  inputBinding:
    prefix: --aln-to-html-stdout
- id: sup_to_pdb_file
  doc: Write the superposed structures to a single PDB file arg, separated using faked
    chain codes
  type: string
  inputBinding:
    prefix: --sup-to-pdb-file
- id: sup_to_pdb_files_dir
  doc: Write the superposed structures to separate PDB files in directory arg
  type: string
  inputBinding:
    prefix: --sup-to-pdb-files-dir
- id: sup_to_stdout
  doc: Print the superposed structures to stdout, separated using faked chain codes
  type: boolean
  inputBinding:
    prefix: --sup-to-stdout
- id: sup_to_pymol
  doc: Start up PyMOL for viewing the superposition
  type: boolean
  inputBinding:
    prefix: --sup-to-pymol
- id: pymol_program
  doc: (="pymol")     Use arg as the PyMOL executable for viewing; may optionally
    include the full path
  type: string
  inputBinding:
    prefix: --pymol-program
- id: sup_to_pymol_file
  doc: 'Write the superposition to a PyMOL script arg (Recommended filename extension:
    .pml)'
  type: string
  inputBinding:
    prefix: --sup-to-pymol-file
- id: sup_to_json_file
  doc: 'Write the superposition to JSON superposition file (Recommended filename extension:
    .sup_json)'
  type: string
  inputBinding:
    prefix: --sup-to-json-file
- id: viewer_colours
  doc: 'Use <colrs> to colour successive entries in the viewer (format: colon-separated
    list of comma-separated triples of RGB values between 0 and 1) (will wrap-around
    when it runs out of colours)'
  type: string
  inputBinding:
    prefix: --viewer-colours
- id: gradient_colour_alignment
  doc: Colour the length of the alignment with a rainbow gradient (blue -> red)
  type: boolean
  inputBinding:
    prefix: --gradient-colour-alignment
- id: show_scores_if_present
  doc: Show the alignment scores (use with gradient-colour-alignment)
  type: boolean
  inputBinding:
    prefix: --show-scores-if-present
- id: scores_to_equivs
  doc: Show the alignment scores to equivalent positions, which increases relative
    scores where few entries are aligned (use with --gradient-colour-alignment and
    --show-scores-if-present)
  type: boolean
  inputBinding:
    prefix: --scores-to-equivs
- id: normalise_scores
  doc: When showing scores, normalise them to the highest score in the alignment (use
    with --gradient-colour-alignment and --show-scores-if-present)
  type: boolean
  inputBinding:
    prefix: --normalise-scores
outputs: []
cwlVersion: v1.1
baseCommand:
- cath-refine-align
