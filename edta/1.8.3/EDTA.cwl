#!/usr/bin/env cwl-runner

baseCommand:
- EDTA.pl
class: CommandLineTool
cwlVersion: v1.0
id: edta.pl
inputs:
- doc: '[File]  The genome FASTA'
  id: genome
  inputBinding:
    prefix: --genome
  type: boolean
- doc: '[Rice|Maize|others]   Specify the species for identification of TIR candidates.
    Default: others'
  id: species
  inputBinding:
    prefix: --species
  type: boolean
- doc: '[all|filter|final|anno] Specify which steps you want to run EDTA. all: run
    the entire pipeline (default) filter: start from raw TEs to the end. final: start
    from filtered TEs to finalizing the run. anno: perform whole-genome annotation/analysis
    after TE library construction.'
  id: step
  inputBinding:
    prefix: --step
  type: boolean
- doc: '[0|1]   If previous raw TE results are found, decide to overwrite (1, rerun)
    or not (0, default).'
  id: overwrite
  inputBinding:
    prefix: --overwrite
  type: boolean
- doc: '[File]  Provide a FASTA file containing the coding sequence (no introns, UTRs,
    nor TEs) of this genome or its close relative.'
  id: cds
  inputBinding:
    prefix: --cds
  type: boolean
- doc: "[File]  Provided a curated library to keep consistant naming and classification\
    \ for known TEs. TEs in this file will be trusted 100%, so please ONLY provide\
    \ MANUALLY CURATED ones. This option is not mandatory. It's totally OK if no file\
    \ is provided (default)."
  id: curated_lib
  inputBinding:
    prefix: --curatedlib
  type: boolean
- doc: '[0|1]   Use RepeatModeler to identify remaining TEs (1) or not (0, default).
    This step is very slow and MAY help to recover some TEs.'
  id: sensitive
  inputBinding:
    prefix: --sensitive
  type: boolean
- doc: '[0|1]   Perform (1) or not perform (0, default) whole-genome TE annotation
    after TE library construction.'
  id: an_no
  inputBinding:
    prefix: --anno
  type: boolean
- doc: '[File]  Provide your own homology-based TE annotation instead of using the
    EDTA library for masking. File is in RepeatMasker .out format. This file will
    be merged with the structural-based TE annotation. (--anno 1 required). Default:
    use the EDTA library for annotation.'
  id: rm_out
  inputBinding:
    prefix: --rmout
  type: boolean
- doc: '[0|1]        Evaluate (1) classification consistency of the TE annotation.
    (--anno 1 required). Default: 0. This step is slow and does not affect the annotation
    result.'
  id: evaluate
  inputBinding:
    prefix: --evaluate
  type: boolean
- doc: '[File]  Exclude bed format regions from TE annotation. Default: undef. (--anno
    1 required).'
  id: exclude
  inputBinding:
    prefix: --exclude
  type: boolean
- doc: '[0|1]   When no confident TE candidates are found: 0, interrupt and exit (default);
    1, use rice TEs to continue.'
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: '[path]  The directory containing RepeatModeler (default: read from ENV)'
  id: repeat_modeler
  inputBinding:
    prefix: --repeatmodeler
  type: boolean
- doc: '[path]   The directory containing RepeatMasker (default: read from ENV)'
  id: repeatmasker
  inputBinding:
    prefix: --repeatmasker
  type: boolean
- doc: '[path]  The directory containing BLASTx and BLASTn (default: read from ENV)'
  id: blast
  inputBinding:
    prefix: --blast
  type: boolean
- doc: if dependencies are fullfiled and quit
  id: check_dependencies
  inputBinding:
    prefix: --check_dependencies
  type: string
- doc: '[path]    The directory containing TRF (default: read from ENV)'
  id: trf
  inputBinding:
    prefix: --trf
  type: boolean
- doc: '[int]   Number of theads to run this script (default: 4)'
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
