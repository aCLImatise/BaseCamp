class: CommandLineTool
id: tombo_resquiggle.cwl
inputs:
- id: in_dna
  doc: "Explicitly select canonical DNA model. Default:\nAutomatically determine from\
    \ FAST5s"
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: "Explicitly select canonical RNA model. Default:\nAutomatically determine from\
    \ FAST5s"
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_obs_per_base_filter
  doc: "Filter reads based on observations per base percentile\nthresholds. Format\
    \ thresholds as \"percentile:thresh\n[pctl2:thresh2 ...]\". For example to filter\
    \ reads with\n99th pctl > 200 obs/base or max > 5k obs/base use\n\"99:200 100:5000\"\
    ."
  type: string[]
  inputBinding:
    prefix: --obs-per-base-filter
- id: in_q_score
  doc: "Q-score threshold for filtering low quality reads.\nDefault: 0.000000"
  type: double?
  inputBinding:
    prefix: --q-score
- id: in_signal_matching_score
  doc: "Observed to expected signal matching score (higher\nscore indicates poor matching).\
    \ Sample type defaults:\nRNA : 2 || DNA : 1.1"
  type: double?
  inputBinding:
    prefix: --signal-matching-score
- id: in_processes
  doc: 'Number of processes. Default: 1'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long?
  inputBinding:
    prefix: --corrected-group
- id: in_base_call_group
  doc: "FAST5 group obtain original basecalls (under Analyses\ngroup). Default: Basecall_1D_000"
  type: long?
  inputBinding:
    prefix: --basecall-group
- id: in_base_call_subgroups
  doc: "FAST5 subgroup(s) (under /Analyses/[--basecall-\ngroup]/) containing basecalls\
    \ and created within\n[--corrected-group] containing re-squiggle results.\nDefault:\
    \ ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_overwrite
  doc: "Overwrite previous corrected group in FAST5 files.\nNote: only effects --corrected-group\
    \ or --new-\ncorrected-group."
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_failed_reads_filename
  doc: "Output failed read filenames with assoicated error.\nDefault: Do not store\
    \ failed reads."
  type: File?
  inputBinding:
    prefix: --failed-reads-filename
- id: in_num_most_common_errors
  doc: "Dynamically show this many most common errors so far\nthrough run. Default:\
    \ 0; Just show progress"
  type: long?
  inputBinding:
    prefix: --num-most-common-errors
- id: in_print_advanced_arguments
  doc: Print advanced re-squiggle arguments and exit.
  type: boolean?
  inputBinding:
    prefix: --print-advanced-arguments
- id: in_quiet
  doc: Don't print status information.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_fast_fives_basedir
  doc: "Directory containing fast5 files. All files ending in\n\"fast5\" found recursively\
    \ within this base directory\nwill be processed."
  type: long
  inputBinding:
    position: 0
- id: in_reference
  doc: "Reference genome/transcriptome FASTA file or minimap2\nindex (with \"map-ont\"\
    \ preset) for mapping."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tombo
- resquiggle
