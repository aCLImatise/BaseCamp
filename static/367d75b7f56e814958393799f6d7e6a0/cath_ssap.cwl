class: CommandLineTool
id: cath_ssap.cwl
inputs:
- id: protein_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: protein_2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: v
  doc: '[ --version ]                         Output version information'
  type: boolean
  inputBinding:
    prefix: -v
- id: debug
  doc: Output debugging information
  type: boolean
  inputBinding:
    prefix: --debug
- id: o
  doc: '[ --outfile ] <file>                  [DEPRECATED] Output scores to <file>
    rather than to stdout'
  type: boolean
  inputBinding:
    prefix: -o
- id: clique_file
  doc: Read clique from <file>
  type: File
  inputBinding:
    prefix: --clique-file
- id: domin_file
  doc: Read domin from <file>
  type: File
  inputBinding:
    prefix: --domin-file
- id: max_score_to_fast_rerun
  doc: (=65)  Run a second fast SSAP with looser cutoffs if the first fast SSAP's
    score falls below <score>
  type: string
  inputBinding:
    prefix: --max-score-to-fast-rerun
- id: max_score_to_slow_rerun
  doc: (=75)  Perform a slow SSAP if the (best) fast SSAP score falls below <score>
  type: string
  inputBinding:
    prefix: --max-score-to-slow-rerun
- id: slow_ssap_only
  doc: Don't try any fast SSAPs; only use slow SSAP
  type: boolean
  inputBinding:
    prefix: --slow-ssap-only
- id: local_ssap_score
  doc: '[DEPRECATED] Normalise the SSAP score over the length of the smallest domain
    rather than the largest'
  type: boolean
  inputBinding:
    prefix: --local-ssap-score
- id: all_scores
  doc: '[DEPRECATED] Output all SSAP scores from fast and slow runs, not just the
    highest'
  type: boolean
  inputBinding:
    prefix: --all-scores
- id: prot_src_files
  doc: '(=PDB)            Read the protein data from the set of files <set>, of available
    sets: PDB, PDB_DSSP, PDB_DSSP_SEC, WOLF_SEC'
  type: string
  inputBinding:
    prefix: --prot-src-files
- id: sup_dir
  doc: '[DEPRECATED] Output a superposition to directory <dir>'
  type: string
  inputBinding:
    prefix: --supdir
- id: align_dir
  doc: (=".")                  Write alignment to directory <dir>
  type: string
  inputBinding:
    prefix: --aligndir
- id: min_score_for_files
  doc: (=0)       Only output alignment/superposition files if the SSAP score exceeds
    <score>
  type: string
  inputBinding:
    prefix: --min-score-for-files
- id: min_sup_score
  doc: (=-0.25)         [DEPRECATED] Calculate superposition based on the residue-pairs
    with scores greater than <score>
  type: string
  inputBinding:
    prefix: --min-sup-score
- id: rasmol_script
  doc: '[DEPRECATED] Write a rasmol superposition script to load and colour the superposed
    structures'
  type: boolean
  inputBinding:
    prefix: --rasmol-script
- id: xml_sup
  doc: '[DEPRECATED] Write a small xml superposition file, from which a larger superposition
    file can be reconstructed'
  type: boolean
  inputBinding:
    prefix: --xmlsup
- id: pdb_path
  doc: (=.)                   Search for PDB files using the path <path>
  type: File
  inputBinding:
    prefix: --pdb-path
- id: dssp_path
  doc: (=.)                  Search for DSSP files using the path <path>
  type: File
  inputBinding:
    prefix: --dssp-path
- id: wolf_path
  doc: (=.)                  Search for wolf files using the path <path>
  type: File
  inputBinding:
    prefix: --wolf-path
- id: sec_path
  doc: (=.)                   Search for sec files using the path <path>
  type: File
  inputBinding:
    prefix: --sec-path
- id: pdb_prefix
  doc: Prepend the prefix <pre> to a protein's name to form its PDB filename
  type: string
  inputBinding:
    prefix: --pdb-prefix
- id: dssp_prefix
  doc: Prepend the prefix <pre> to a protein's name to form its DSSP filename
  type: string
  inputBinding:
    prefix: --dssp-prefix
- id: wolf_prefix
  doc: Prepend the prefix <pre> to a protein's name to form its wolf filename
  type: string
  inputBinding:
    prefix: --wolf-prefix
- id: sec_prefix
  doc: Prepend the prefix <pre> to a protein's name to form its sec filename
  type: string
  inputBinding:
    prefix: --sec-prefix
- id: pdb_suffix
  doc: Append the suffix <suf> to a protein's name to form its PDB filename
  type: string
  inputBinding:
    prefix: --pdb-suffix
- id: dssp_suffix
  doc: (=.dssp)             Append the suffix <suf> to a protein's name to form its
    DSSP filename
  type: string
  inputBinding:
    prefix: --dssp-suffix
- id: wolf_suffix
  doc: (=.wolf)             Append the suffix <suf> to a protein's name to form its
    wolf filename
  type: string
  inputBinding:
    prefix: --wolf-suffix
- id: sec_suffix
  doc: (=.sec)               Append the suffix <suf> to a protein's name to form its
    sec filename
  type: string
  inputBinding:
    prefix: --sec-suffix
- id: align_regions
  doc: 'Handle region(s) <regions> as the alignment part of the structure. May be
    specified multiple times, in correspondence with the structures. Format is: D[5inwB02]251-348:B,408-416A:B
    (Put <regions> in quotes to prevent the square brackets confusing your shell ("No
    match"))'
  type: string
  inputBinding:
    prefix: --align-regions
- id: alignment_help
  doc: Help on alignment format
  type: boolean
  inputBinding:
    prefix: --alignment-help
- id: citation_help
  doc: Help on SSAP authorship & how to cite it
  type: boolean
  inputBinding:
    prefix: --citation-help
- id: scores_help
  doc: Help on scores format
  type: boolean
  inputBinding:
    prefix: --scores-help
outputs: []
cwlVersion: v1.1
baseCommand:
- cath-ssap
