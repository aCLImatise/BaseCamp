class: CommandLineTool
id: cath_superpose.cwl
inputs:
- id: in_output_version_information
  doc: '[ --version ]                         Output version information'
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
  doc: "[=<dir>(=\"\")]             Do the required SSAPs in directory <dir>; use\
    \ results as with --ssap-scores-infile\nUse a suitable temp directory if none\
    \ is specified"
  type: boolean
  inputBinding:
    prefix: --do-the-ssaps
- id: in_align_refining
  doc: '(=NO)            Apply <refn> refining to the alignment, one of available
    values:'
  type: string
  inputBinding:
    prefix: --align-refining
- id: in_json_sup_in_file
  doc: Read superposition from file <file>
  type: File
  inputBinding:
    prefix: --json-sup-infile
- id: in_id
  doc: Structure ids
  type: string
  inputBinding:
    prefix: --id
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
- id: in_align_regions
  doc: "Handle region(s) <regions> as the alignment part of the structure.\nMay be\
    \ specified multiple times, in correspondence with the structures.\nFormat is:\
    \ D[5inwB02]251-348:B,408-416A:B\n(Put <regions> in quotes to prevent the square\
    \ brackets confusing your shell (\"No match\"))"
  type: long
  inputBinding:
    prefix: --align-regions
- id: in_aln_to_cath_aln_file
  doc: '[EXPERIMENTAL] Write the alignment to a CATH alignment file'
  type: File
  inputBinding:
    prefix: --aln-to-cath-aln-file
- id: in_aln_to_cath_aln_stdout
  doc: '[EXPERIMENTAL] Print the alignment to stdout in CATH alignment format'
  type: boolean
  inputBinding:
    prefix: --aln-to-cath-aln-stdout
- id: in_aln_to_fast_a_file
  doc: Write the alignment to a FASTA file
  type: File
  inputBinding:
    prefix: --aln-to-fasta-file
- id: in_aln_to_fast_a_stdout
  doc: Print the alignment to stdout in FASTA format
  type: boolean
  inputBinding:
    prefix: --aln-to-fasta-stdout
- id: in_aln_to_ssap_file
  doc: Write the alignment to a SSAP file
  type: File
  inputBinding:
    prefix: --aln-to-ssap-file
- id: in_aln_to_ssap_stdout
  doc: Print the alignment to stdout as SSAP
  type: boolean
  inputBinding:
    prefix: --aln-to-ssap-stdout
- id: in_aln_to_html_file
  doc: Write the alignment to a HTML file
  type: File
  inputBinding:
    prefix: --aln-to-html-file
- id: in_aln_to_html_stdout
  doc: Print the alignment to stdout as HTML
  type: boolean
  inputBinding:
    prefix: --aln-to-html-stdout
- id: in_sup_to_pdb_file
  doc: Write the superposed structures to a single PDB file arg, separated using faked
    chain codes
  type: File
  inputBinding:
    prefix: --sup-to-pdb-file
- id: in_sup_to_pdb_files_dir
  doc: Write the superposed structures to separate PDB files in directory arg
  type: Directory
  inputBinding:
    prefix: --sup-to-pdb-files-dir
- id: in_sup_to_stdout
  doc: Print the superposed structures to stdout, separated using faked chain codes
  type: boolean
  inputBinding:
    prefix: --sup-to-stdout
- id: in_sup_to_pymol
  doc: Start up PyMOL for viewing the superposition
  type: boolean
  inputBinding:
    prefix: --sup-to-pymol
- id: in_pymol_program
  doc: (="pymol")           Use arg as the PyMOL executable for viewing; may optionally
    include the full path
  type: File
  inputBinding:
    prefix: --pymol-program
- id: in_sup_to_pymol_file
  doc: "Write the superposition to a PyMOL script arg\n(Recommended filename extension:\
    \ .pml)"
  type: File
  inputBinding:
    prefix: --sup-to-pymol-file
- id: in_sup_to_json_file
  doc: "Write the superposition to JSON superposition file\n(Recommended filename\
    \ extension: .sup_json)"
  type: File
  inputBinding:
    prefix: --sup-to-json-file
- id: in_viewer_colours
  doc: "Use <colrs> to colour successive entries in the viewer\n(format: colon-separated\
    \ list of comma-separated triples of RGB values between 0 and 1)\n(will wrap-around\
    \ when it runs out of colours)"
  type: long
  inputBinding:
    prefix: --viewer-colours
- id: in_gradient_colour_alignment
  doc: Colour the length of the alignment with a rainbow gradient (blue -> red)
  type: boolean
  inputBinding:
    prefix: --gradient-colour-alignment
- id: in_show_scores_if_present
  doc: "Show the alignment scores\n(use with gradient-colour-alignment)"
  type: boolean
  inputBinding:
    prefix: --show-scores-if-present
- id: in_scores_to_equivs
  doc: "Show the alignment scores to equivalent positions, which increases relative\
    \ scores where few entries are aligned\n(use with --gradient-colour-alignment\
    \ and --show-scores-if-present)"
  type: boolean
  inputBinding:
    prefix: --scores-to-equivs
- id: in_normalise_scores
  doc: "When showing scores, normalise them to the highest score in the alignment\n\
    (use with --gradient-colour-alignment and --show-scores-if-present)"
  type: boolean
  inputBinding:
    prefix: --normalise-scores
- id: in_regions_context
  doc: '(=alone)     Show the alignment regions in the context <context>, one of available
    options:'
  type: string
  inputBinding:
    prefix: --regions-context
- id: in_show_dna_within_dist
  doc: (=4)       Show DNA within <dist>Å of the alignment regions
  type: long
  inputBinding:
    prefix: --show-dna-within-dist
- id: in_show_organic_within_dist
  doc: (=10)  Show organic molecules within <dist>Å of the alignment regions
  type: long
  inputBinding:
    prefix: --show-organic-within-dist
- id: in_no
  doc: "- Don't refine the alignment"
  type: string
  inputBinding:
    position: 0
- id: in_alone
  doc: '- alone'
  type: string
  inputBinding:
    position: 0
- id: in_in_pdb
  doc: '- within the PDB in which the regions appear'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cath-superpose
