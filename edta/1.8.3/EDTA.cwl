class: CommandLineTool
id: EDTA.pl.cwl
inputs:
- id: genome
  doc: '[File]  The genome FASTA'
  type: boolean
  inputBinding:
    prefix: --genome
- id: species
  doc: '[Rice|Maize|others]   Specify the species for identification of TIR candidates.
    Default: others'
  type: boolean
  inputBinding:
    prefix: --species
- id: step
  doc: '[all|filter|final|anno] Specify which steps you want to run EDTA. all: run
    the entire pipeline (default) filter: start from raw TEs to the end. final: start
    from filtered TEs to finalizing the run. anno: perform whole-genome annotation/analysis
    after TE library construction.'
  type: boolean
  inputBinding:
    prefix: --step
- id: overwrite
  doc: '[0|1]   If previous raw TE results are found, decide to overwrite (1, rerun)
    or not (0, default).'
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: cds
  doc: '[File]  Provide a FASTA file containing the coding sequence (no introns, UTRs,
    nor TEs) of this genome or its close relative.'
  type: boolean
  inputBinding:
    prefix: --cds
- id: curated_lib
  doc: "[File]  Provided a curated library to keep consistant naming and classification\
    \ for known TEs. TEs in this file will be trusted 100%, so please ONLY provide\
    \ MANUALLY CURATED ones. This option is not mandatory. It's totally OK if no file\
    \ is provided (default)."
  type: boolean
  inputBinding:
    prefix: --curatedlib
- id: sensitive
  doc: '[0|1]   Use RepeatModeler to identify remaining TEs (1) or not (0, default).
    This step is very slow and MAY help to recover some TEs.'
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: an_no
  doc: '[0|1]   Perform (1) or not perform (0, default) whole-genome TE annotation
    after TE library construction.'
  type: boolean
  inputBinding:
    prefix: --anno
- id: rm_out
  doc: '[File]  Provide your own homology-based TE annotation instead of using the
    EDTA library for masking. File is in RepeatMasker .out format. This file will
    be merged with the structural-based TE annotation. (--anno 1 required). Default:
    use the EDTA library for annotation.'
  type: boolean
  inputBinding:
    prefix: --rmout
- id: evaluate
  doc: '[0|1]        Evaluate (1) classification consistency of the TE annotation.
    (--anno 1 required). Default: 0. This step is slow and does not affect the annotation
    result.'
  type: boolean
  inputBinding:
    prefix: --evaluate
- id: exclude
  doc: '[File]  Exclude bed format regions from TE annotation. Default: undef. (--anno
    1 required).'
  type: boolean
  inputBinding:
    prefix: --exclude
- id: force
  doc: '[0|1]   When no confident TE candidates are found: 0, interrupt and exit (default);
    1, use rice TEs to continue.'
  type: boolean
  inputBinding:
    prefix: --force
- id: repeat_modeler
  doc: '[path]  The directory containing RepeatModeler (default: read from ENV)'
  type: boolean
  inputBinding:
    prefix: --repeatmodeler
- id: repeatmasker
  doc: '[path]   The directory containing RepeatMasker (default: read from ENV)'
  type: boolean
  inputBinding:
    prefix: --repeatmasker
- id: blast
  doc: '[path]  The directory containing BLASTx and BLASTn (default: read from ENV)'
  type: boolean
  inputBinding:
    prefix: --blast
- id: check_dependencies
  doc: if dependencies are fullfiled and quit
  type: string
  inputBinding:
    prefix: --check_dependencies
- id: trf
  doc: '[path]    The directory containing TRF (default: read from ENV)'
  type: boolean
  inputBinding:
    prefix: --trf
- id: threads
  doc: '[int]   Number of theads to run this script (default: 4)'
  type: boolean
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- EDTA.pl
