class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/eukcc.cwl
inputs:
- id: db
  doc: Path to EukCC DB
  type: string
  inputBinding:
    prefix: --db
- id: outdir
  doc: Location for the output. Names will be prefixed using the bin filenames
  type: string
  inputBinding:
    prefix: --outdir
- id: config
  doc: Config file to define parameters, YAML
  type: string
  inputBinding:
    prefix: --config
- id: n_cores
  doc: set number of cores for GeneMark-ES, pplacer and Hmmer
  type: long
  inputBinding:
    prefix: --ncores
- id: nco_resp_placer
  doc: Pplacer requires a lot of memory. If you want you can set less cores for pplacer,
    which improves memory consumption significantly
  type: long
  inputBinding:
    prefix: --ncorespplacer
- id: hmm
  doc: run hmmer on all these HMMs instead
  type: string
  inputBinding:
    prefix: --hmm
- id: training
  doc: Run EukCC in training mode (needed to create a new release of the DB)
  type: boolean
  inputBinding:
    prefix: --training
- id: proteins
  doc: Input fasta is proteins
  type: boolean
  inputBinding:
    prefix: --proteins
- id: bed
  doc: You can pass a bedfile of the protein location to omit fragmented proteins
    being detected twice
  type: File
  inputBinding:
    prefix: --bed
- id: force
  doc: Force rerun of computation even if output is newer than input. Don't resume
    previous run.
  type: boolean
  inputBinding:
    prefix: --force
- id: keep_temp
  doc: Keep all temporary files, by default EukCC will remove some temp files
  type: boolean
  inputBinding:
    prefix: --keeptemp
- id: f_place
  doc: Force rerun of placement and subsequent steps
  type: boolean
  inputBinding:
    prefix: --fplace
- id: no_glob
  doc: Do not expand paths using glob
  type: boolean
  inputBinding:
    prefix: --noglob
- id: quiet
  doc: Silcence most output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: debug
  doc: Debug and thus ignore safety
  type: boolean
  inputBinding:
    prefix: --debug
- id: hpa
  doc: Set placement method to HPA
  type: boolean
  inputBinding:
    prefix: --HPA
- id: n_placements
  doc: 'Set number of proteins to support location in tree (default: 2)'
  type: string
  inputBinding:
    prefix: --nPlacements
- id: min_genomes
  doc: 'Minimal number of genomes to support a set (default: 3)'
  type: string
  inputBinding:
    prefix: --minGenomes
- id: ful_lineage
  doc: Output full lineage for MAGs
  type: boolean
  inputBinding:
    prefix: --fullineage
- id: min_placement_likelyhood
  doc: 'minimal pplacer likelyhood (default: 0.4)'
  type: double
  inputBinding:
    prefix: --minPlacementLikelyhood
- id: mind_ist
  doc: 'Distance to collapse hits (default: 2000)'
  type: string
  inputBinding:
    prefix: --mindist
- id: touch
  doc: Do not run, but touch all output files
  type: boolean
  inputBinding:
    prefix: --touch
- id: gmes
  doc: only run GeneMark-ES
  type: boolean
  inputBinding:
    prefix: --gmes
- id: pyg_mes
  doc: Use pygmes, will improve eukccs capability of running on highly fragmented
    bins but will take longer
  type: boolean
  inputBinding:
    prefix: --pygmes
- id: diamond
  doc: required to use pygmes option
  type: string
  inputBinding:
    prefix: --diamond
- id: plot
  doc: produce plots
  type: boolean
  inputBinding:
    prefix: --plot
- id: fast_a
  doc: Run script on this bin (fasta file)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- eukcc
