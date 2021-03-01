class: CommandLineTool
id: EDTA.pl.cwl
inputs:
- id: in_genome
  doc: '[File]  The genome FASTA'
  type: boolean?
  inputBinding:
    prefix: --genome
- id: in_species
  doc: "[Rice|Maize|others]   Specify the species for identification of TIR\ncandidates.\
    \ Default: others"
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_step
  doc: "[all|filter|final|anno] Specify which steps you want to run EDTA.\nall: run\
    \ the entire pipeline (default)\nfilter: start from raw TEs to the end.\nfinal:\
    \ start from filtered TEs to finalizing the run.\nanno: perform whole-genome annotation/analysis\
    \ after\nTE library construction."
  type: boolean?
  inputBinding:
    prefix: --step
- id: in_overwrite
  doc: "[0|1]   If previous raw TE results are found, decide to overwrite\n(1, rerun)\
    \ or not (0, default)."
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_cds
  doc: "[File]  Provide a FASTA file containing the coding sequence (no introns,\n\
    UTRs, nor TEs) of this genome or its close relative."
  type: boolean?
  inputBinding:
    prefix: --cds
- id: in_curated_lib
  doc: "[File]  Provided a curated library to keep consistant naming and\nclassification\
    \ for known TEs. TEs in this file will be\ntrusted 100%, so please ONLY provide\
    \ MANUALLY CURATED ones.\nThis option is not mandatory. It's totally OK if no\
    \ file is\nprovided (default)."
  type: boolean?
  inputBinding:
    prefix: --curatedlib
- id: in_sensitive
  doc: "[0|1]   Use RepeatModeler to identify remaining TEs (1) or not (0,\ndefault).\
    \ This step is slow but MAY help to recover some TEs."
  type: boolean?
  inputBinding:
    prefix: --sensitive
- id: in_an_no
  doc: "[0|1]   Perform (1) or not perform (0, default) whole-genome TE annotation\n\
    after TE library construction."
  type: boolean?
  inputBinding:
    prefix: --anno
- id: in_rm_out
  doc: "[File]  Provide your own homology-based TE annotation instead of using the\n\
    EDTA library for masking. File is in RepeatMasker .out format. This\nfile will\
    \ be merged with the structural-based TE annotation. (--anno 1\nrequired). Default:\
    \ use the EDTA library for annotation."
  type: File?
  inputBinding:
    prefix: --rmout
- id: in_evaluate
  doc: "[0|1]        Evaluate (1) classification consistency of the TE annotation.\n\
    (--anno 1 required). Default: 0. This step is slow and does\nnot change the annotation\
    \ result."
  type: boolean?
  inputBinding:
    prefix: --evaluate
- id: in_exclude
  doc: "[File]  Exclude bed format regions from TE annotation. Default: undef.\n(--anno\
    \ 1 required)."
  type: boolean?
  inputBinding:
    prefix: --exclude
- id: in_force
  doc: "[0|1]   When no confident TE candidates are found: 0, interrupt and exit\n\
    (default); 1, use rice TEs to continue."
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_repeat_modeler
  doc: '[path]  The directory containing RepeatModeler (default: read from ENV)'
  type: boolean?
  inputBinding:
    prefix: --repeatmodeler
- id: in_repeatmasker
  doc: '[path]   The directory containing RepeatMasker (default: read from ENV)'
  type: boolean?
  inputBinding:
    prefix: --repeatmasker
- id: in_check_dependencies
  doc: if dependencies are fullfiled and quit
  type: string?
  inputBinding:
    prefix: --check_dependencies
- id: in_threads
  doc: '[int]   Number of theads to run this script (default: 4)'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_debug
  doc: '[0|1]   Retain intermediate files (default: 0)'
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_rm_out
  doc: "[File]  Provide your own homology-based TE annotation instead of using the\n\
    EDTA library for masking. File is in RepeatMasker .out format. This\nfile will\
    \ be merged with the structural-based TE annotation. (--anno 1\nrequired). Default:\
    \ use the EDTA library for annotation."
  type: File?
  outputBinding:
    glob: $(inputs.in_rm_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/edta:1.9.6--1
cwlVersion: v1.1
baseCommand:
- EDTA.pl
