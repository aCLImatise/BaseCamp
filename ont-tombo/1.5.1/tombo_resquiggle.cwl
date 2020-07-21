class: CommandLineTool
id: ../../../tombo_resquiggle.cwl
inputs:
- id: dna
  doc: 'Explicitly select canonical DNA model. Default: Automatically determine from
    FAST5s'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: 'Explicitly select canonical RNA model. Default: Automatically determine from
    FAST5s'
  type: boolean
  inputBinding:
    prefix: --rna
- id: obs_per_base_filter
  doc: Filter reads based on observations per base percentile thresholds. Format thresholds
    as "percentile:thresh [pctl2:thresh2 ...]". For example to filter reads with 99th
    pctl > 200 obs/base or max > 5k obs/base use "99:200 100:5000".
  type: string[]
  inputBinding:
    prefix: --obs-per-base-filter
- id: q_score
  doc: 'Q-score threshold for filtering low quality reads. Default: 0.000000'
  type: string
  inputBinding:
    prefix: --q-score
- id: signal_matching_score
  doc: 'Observed to expected signal matching score (higher score indicates poor matching).
    Sample type defaults: RNA : 2 || DNA : 1.1'
  type: string
  inputBinding:
    prefix: --signal-matching-score
- id: processes
  doc: 'Number of processes. Default: 1'
  type: string
  inputBinding:
    prefix: --processes
- id: corrected_group
  doc: 'FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000'
  type: string
  inputBinding:
    prefix: --corrected-group
- id: base_call_group
  doc: 'FAST5 group obtain original basecalls (under Analyses group). Default: Basecall_1D_000'
  type: string
  inputBinding:
    prefix: --basecall-group
- id: base_call_subgroups
  doc: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls\
    \ and created within [--corrected-group] containing re-squiggle results. Default:\
    \ ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: overwrite
  doc: 'Overwrite previous corrected group in FAST5 files. Note: only effects --corrected-group
    or --new- corrected-group.'
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: failed_reads_filename
  doc: 'Output failed read filenames with assoicated error. Default: Do not store
    failed reads.'
  type: string
  inputBinding:
    prefix: --failed-reads-filename
- id: num_most_common_errors
  doc: 'Dynamically show this many most common errors so far through run. Default:
    0; Just show progress'
  type: string
  inputBinding:
    prefix: --num-most-common-errors
- id: print_advanced_arguments
  doc: Print advanced re-squiggle arguments and exit.
  type: boolean
  inputBinding:
    prefix: --print-advanced-arguments
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: fast_fives_basedir
  doc: Directory containing fast5 files. All files ending in "fast5" found recursively
    within this base directory will be processed.
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: Reference genome/transcriptome FASTA file or minimap2 index (with "map-ont"
    preset) for mapping.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tombo
- resquiggle
