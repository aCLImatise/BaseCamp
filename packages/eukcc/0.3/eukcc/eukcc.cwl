class: CommandLineTool
id: eukcc.cwl
inputs:
- id: in_db
  doc: Path to EukCC DB
  type: File?
  inputBinding:
    prefix: --db
- id: in_outdir
  doc: "Location for the output. Names will be prefixed using\nthe bin filenames"
  type: string?
  inputBinding:
    prefix: --outdir
- id: in_config
  doc: Config file to define parameters, YAML
  type: File?
  inputBinding:
    prefix: --config
- id: in_n_cores
  doc: set number of cores for GeneMark-ES, pplacer and Hmmer
  type: long?
  inputBinding:
    prefix: --ncores
- id: in_nco_resp_placer
  doc: "Pplacer requires a lot of memory. If you want you can\nset less cores for\
    \ pplacer, which improves memory\nconsumption significantly"
  type: long?
  inputBinding:
    prefix: --ncorespplacer
- id: in_node
  doc: 'Use Node (default: None)'
  type: string?
  inputBinding:
    prefix: --node
- id: in_hmm
  doc: run hmmer on all these HMMs instead
  type: string?
  inputBinding:
    prefix: --hmm
- id: in_training
  doc: "Run EukCC in training mode (needed to create a new\nrelease of the DB)"
  type: boolean?
  inputBinding:
    prefix: --training
- id: in_proteins
  doc: Input fasta is proteins
  type: boolean?
  inputBinding:
    prefix: --proteins
- id: in_bed
  doc: "You can pass a bedfile of the protein location to omit\nfragmented proteins\
    \ being detected twice"
  type: File?
  inputBinding:
    prefix: --bed
- id: in_force
  doc: "Force rerun of computation even if output is newer\nthan input. Don't resume\
    \ previous run."
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_keep_temp
  doc: "Keep all temporary files, by default EukCC will remove\nsome temp files"
  type: boolean?
  inputBinding:
    prefix: --keeptemp
- id: in_f_place
  doc: Force rerun of placement and subsequent steps
  type: boolean?
  inputBinding:
    prefix: --fplace
- id: in_no_glob
  doc: Do not expand paths using glob
  type: boolean?
  inputBinding:
    prefix: --noglob
- id: in_quiet
  doc: Silcence most output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: Debug and thus ignore safety
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_hpa
  doc: Set placement method to HPA
  type: boolean?
  inputBinding:
    prefix: --HPA
- id: in_n_placements
  doc: "Set number of proteins to support location in tree\n(default: 2)"
  type: long?
  inputBinding:
    prefix: --nPlacements
- id: in_min_genomes
  doc: "Minimal number of genomes to support a set (default:\n3)"
  type: long?
  inputBinding:
    prefix: --minGenomes
- id: in_ful_lineage
  doc: Output full lineage for MAGs
  type: boolean?
  inputBinding:
    prefix: --fullineage
- id: in_min_placement_likelyhood
  doc: 'minimal pplacer likelyhood (default: 0.4)'
  type: double?
  inputBinding:
    prefix: --minPlacementLikelyhood
- id: in_mind_ist
  doc: 'Distance to collapse hits (default: 2000)'
  type: long?
  inputBinding:
    prefix: --mindist
- id: in_touch
  doc: Do not run, but touch all output files
  type: boolean?
  inputBinding:
    prefix: --touch
- id: in_gmes
  doc: only run GeneMark-ES
  type: boolean?
  inputBinding:
    prefix: --gmes
- id: in_pyg_mes
  doc: "Use pygmes, will improve eukccs capability of running\non highly fragmented\
    \ bins but will take longer"
  type: boolean?
  inputBinding:
    prefix: --pygmes
- id: in_diamond
  doc: required to use pygmes option
  type: string?
  inputBinding:
    prefix: --diamond
- id: in_plot
  doc: produce plots
  type: boolean?
  inputBinding:
    prefix: --plot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/eukcc:0.3--py_0
cwlVersion: v1.1
baseCommand:
- eukcc
