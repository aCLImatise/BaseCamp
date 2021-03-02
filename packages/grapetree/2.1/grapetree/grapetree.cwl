class: CommandLineTool
id: grapetree.cwl
inputs:
- id: in_profile
  doc: '[REQUIRED] An input filename of a file containing MLST or SNP character data,
    OR a fasta file containing aligned sequences.'
  type: File?
  inputBinding:
    prefix: --profile
- id: in_method
  doc: "\"MSTreeV2\" [DEFAULT]\n\"MSTree\"\n\"NJ\": FastME V2 NJ tree\n\"RapidNJ\"\
    : RapidNJ for very large datasets\n\"ninja\": Alternative NJ algorithm for very\
    \ large datasets\n\"distance\": allelic distance matrix in PHYLIP format."
  type: long?
  inputBinding:
    prefix: --method
- id: in_matrix
  doc: "\"symmetric\": [DEFAULT: MSTree, NJ and RapidNJ]\n\"asymmetric\": [DEFAULT:\
    \ MSTreeV2].\n\"blockwise\": (experimental for ordered loci) A different locus\
    \ is given less penalty (defined by -b) if the previous locus is also different"
  type: long?
  inputBinding:
    prefix: --matrix
- id: in_re_craft
  doc: 'Triggers local branch recrafting. [DEFAULT: MSTreeV2].'
  type: boolean?
  inputBinding:
    prefix: --recraft
- id: in_missing
  doc: "ONLY FOR symmetric DISTANCE MATRIX.\n0: [DEFAULT] ignore missing data in pairwise\
    \ comparison.\n1: Remove column with missing data.\n2: treat data as an allele.\n\
    3: Absolute number of allelic differences."
  type: long?
  inputBinding:
    prefix: --missing
- id: in_wg_mlst
  doc: '[EXPERIMENTAL] a better support of wgMLST schemes.'
  type: boolean?
  inputBinding:
    prefix: --wgMLST
- id: in_heuristic
  doc: "Tiebreak heuristic used only in MSTree and MSTreeV2\n\"eBurst\" [DEFAULT:\
    \ MSTree]\n\"harmonic\" [DEFAULT: MSTreeV2]"
  type: long?
  inputBinding:
    prefix: --heuristic
- id: in_n_proc
  doc: 'Number of CPU processes in parallel use. [DEFAULT]: 5.'
  type: long?
  inputBinding:
    prefix: --n_proc
- id: in_check
  doc: Only calculate the expected time/memory requirements.
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_block_penalty
  doc: "[DEFAULT: 0.01] The penalty that is given to a different locus if it is led\
    \ by another difference. Only works for \"-x blockwise\"\n"
  type: double?
  inputBinding:
    prefix: --block_penalty
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/grapetree:2.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- grapetree
