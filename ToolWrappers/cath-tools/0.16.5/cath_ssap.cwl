class: CommandLineTool
id: cath_ssap.cwl
inputs:
- id: in_output_version_information
  doc: '[ --version ]                         Output version information'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_debug
  doc: Output debugging information
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_output_scores_file
  doc: '[ --outfile ] <file>                  [DEPRECATED] Output scores to <file>
    rather than to stdout'
  type: File
  inputBinding:
    prefix: -o
- id: in_clique_file
  doc: Read clique from <file>
  type: File
  inputBinding:
    prefix: --clique-file
- id: in_domin_file
  doc: Read domin from <file>
  type: File
  inputBinding:
    prefix: --domin-file
- id: in_max_score_to_fast_rerun
  doc: (=65)  Run a second fast SSAP with looser cutoffs if the first fast SSAP's
    score falls below <score>
  type: long
  inputBinding:
    prefix: --max-score-to-fast-rerun
- id: in_max_score_to_slow_rerun
  doc: (=75)  Perform a slow SSAP if the (best) fast SSAP score falls below <score>
  type: long
  inputBinding:
    prefix: --max-score-to-slow-rerun
- id: in_slow_ssap_only
  doc: Don't try any fast SSAPs; only use slow SSAP
  type: boolean
  inputBinding:
    prefix: --slow-ssap-only
- id: in_local_ssap_score
  doc: '[DEPRECATED] Normalise the SSAP score over the length of the smallest domain
    rather than the largest'
  type: boolean
  inputBinding:
    prefix: --local-ssap-score
- id: in_all_scores
  doc: '[DEPRECATED] Output all SSAP scores from fast and slow runs, not just the
    highest'
  type: boolean
  inputBinding:
    prefix: --all-scores
- id: in_prot_src_files
  doc: "(=PDB)            Read the protein data from the set of files <set>, of available\
    \ sets:\nPDB, PDB_DSSP, PDB_DSSP_SEC, WOLF_SEC"
  type: string
  inputBinding:
    prefix: --prot-src-files
- id: in_sup_dir
  doc: '[DEPRECATED] Output a superposition to directory <dir>'
  type: Directory
  inputBinding:
    prefix: --supdir
- id: in_align_dir
  doc: (=".")                  Write alignment to directory <dir>
  type: Directory
  inputBinding:
    prefix: --aligndir
- id: in_min_score_for_files
  doc: (=0)       Only output alignment/superposition files if the SSAP score exceeds
    <score>
  type: long
  inputBinding:
    prefix: --min-score-for-files
- id: in_min_sup_score
  doc: (=-0.25)         [DEPRECATED] Calculate superposition based on the residue-pairs
    with scores greater than <score>
  type: long
  inputBinding:
    prefix: --min-sup-score
- id: in_rasmol_script
  doc: '[DEPRECATED] Write a rasmol superposition script to load and colour the superposed
    structures'
  type: boolean
  inputBinding:
    prefix: --rasmol-script
- id: in_xml_sup
  doc: '[DEPRECATED] Write a small xml superposition file, from which a larger superposition
    file can be reconstructed'
  type: boolean
  inputBinding:
    prefix: --xmlsup
- id: in_pdb_path
  doc: (=.)                   Search for PDB files using the path <path>
  type: File
  inputBinding:
    prefix: --pdb-path
- id: in_dssp_path
  doc: (=.)                  Search for DSSP files using the path <path>
  type: File
  inputBinding:
    prefix: --dssp-path
- id: in_wolf_path
  doc: (=.)                  Search for wolf files using the path <path>
  type: File
  inputBinding:
    prefix: --wolf-path
- id: in_sec_path
  doc: (=.)                   Search for sec files using the path <path>
  type: File
  inputBinding:
    prefix: --sec-path
- id: in_pdb_prefix
  doc: Prepend the prefix <pre> to a protein's name to form its PDB filename
  type: File
  inputBinding:
    prefix: --pdb-prefix
- id: in_dssp_prefix
  doc: Prepend the prefix <pre> to a protein's name to form its DSSP filename
  type: File
  inputBinding:
    prefix: --dssp-prefix
- id: in_wolf_prefix
  doc: Prepend the prefix <pre> to a protein's name to form its wolf filename
  type: File
  inputBinding:
    prefix: --wolf-prefix
- id: in_sec_prefix
  doc: Prepend the prefix <pre> to a protein's name to form its sec filename
  type: File
  inputBinding:
    prefix: --sec-prefix
- id: in_pdb_suffix
  doc: Append the suffix <suf> to a protein's name to form its PDB filename
  type: File
  inputBinding:
    prefix: --pdb-suffix
- id: in_dssp_suffix
  doc: (=.dssp)             Append the suffix <suf> to a protein's name to form its
    DSSP filename
  type: File
  inputBinding:
    prefix: --dssp-suffix
- id: in_wolf_suffix
  doc: (=.wolf)             Append the suffix <suf> to a protein's name to form its
    wolf filename
  type: File
  inputBinding:
    prefix: --wolf-suffix
- id: in_sec_suffix
  doc: (=.sec)               Append the suffix <suf> to a protein's name to form its
    sec filename
  type: File
  inputBinding:
    prefix: --sec-suffix
- id: in_align_regions
  doc: "Handle region(s) <regions> as the alignment part of the structure.\nMay be\
    \ specified multiple times, in correspondence with the structures.\nFormat is:\
    \ D[5inwB02]251-348:B,408-416A:B\n(Put <regions> in quotes to prevent the square\
    \ brackets confusing your shell (\"No match\"))"
  type: long
  inputBinding:
    prefix: --align-regions
- id: in_alignment_help
  doc: Help on alignment format
  type: boolean
  inputBinding:
    prefix: --alignment-help
- id: in_citation_help
  doc: Help on SSAP authorship & how to cite it
  type: boolean
  inputBinding:
    prefix: --citation-help
- id: in_scores_help
  doc: Help on scores format
  type: boolean
  inputBinding:
    prefix: --scores-help
- id: in_protein_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_protein_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_scores_file
  doc: '[ --outfile ] <file>                  [DEPRECATED] Output scores to <file>
    rather than to stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_output_scores_file)
- id: out_sup_dir
  doc: '[DEPRECATED] Output a superposition to directory <dir>'
  type: Directory
  outputBinding:
    glob: $(inputs.in_sup_dir)
cwlVersion: v1.1
baseCommand:
- cath-ssap
