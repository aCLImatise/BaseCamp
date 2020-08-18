class: CommandLineTool
id: ../../../tombo_build_model_event_resquiggle.cwl
inputs:
- id: minimap_two_executable
  doc: Path to minimap2 executable.
  type: long
  inputBinding:
    prefix: --minimap2-executable
- id: minimap_two_index
  doc: Path to minimap2 index (with map-ont preset) file corresponding to the [genome_fasta]
    provided.
  type: long
  inputBinding:
    prefix: --minimap2-index
- id: bwa_mem_executable
  doc: Path to bwa-mem executable.
  type: string
  inputBinding:
    prefix: --bwa-mem-executable
- id: graph_map_executable
  doc: Path to graphmap executable.
  type: string
  inputBinding:
    prefix: --graphmap-executable
- id: alignment_batch_size
  doc: 'Number of reads included in each alignment call. Note: A new system mapping
    call is made for each batch (including loading of the genome), so it is advised
    to use larger values for larger genomes. Default: 1000'
  type: string
  inputBinding:
    prefix: --alignment-batch-size
- id: obs_per_base_filter
  doc: Filter reads based on observations per base percentile thresholds. Format thresholds
    as "percentile:thresh [pctl2:thresh2 ...]". For example to filter reads with 99th
    pctl > 200 obs/base or max > 5k obs/base use "99:200 100:5000".
  type: string[]
  inputBinding:
    prefix: --obs-per-base-filter
- id: timeout
  doc: 'Timeout in seconds for processing a single read. Default: No timeout.'
  type: string
  inputBinding:
    prefix: --timeout
- id: cpts_limit
  doc: 'Maximum number of changepoints to find within a single indel group. Default:
    No limit.'
  type: string
  inputBinding:
    prefix: --cpts-limit
- id: skip_index
  doc: Skip creation of tombo index. This drastically slows downstream tombo commands.
    Default stores tombo index named ".[--fast5-basedir].[--corrected- group].tombo.index"
    to be loaded automatically for downstream commands.
  type: boolean
  inputBinding:
    prefix: --skip-index
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
- id: include_event_stdev
  doc: Include corrected event standard deviation in output FAST5 data.
  type: boolean
  inputBinding:
    prefix: --include-event-stdev
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
- id: processes
  doc: 'Number of processes. Default: 2'
  type: string
  inputBinding:
    prefix: --processes
- id: align_processes
  doc: 'Number of processes to use for parsing and aligning original basecalls. Each
    process will independently load the genome into memory, so use caution with larger
    genomes (e.g. human). Default: 1'
  type: string
  inputBinding:
    prefix: --align-processes
- id: align_threads_per_process
  doc: 'Number of threads to use for aligner system call. Default: [--processes] /
    (2 * [--align-processes)]'
  type: string
  inputBinding:
    prefix: --align-threads-per-process
- id: re_squiggle_processes
  doc: 'Number of processes to use for resquiggle algorithm. Default: [--processes]
    / 2'
  type: string
  inputBinding:
    prefix: --resquiggle-processes
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
- id: reference_fast_a
  doc: Reference genome/transcriptome FASTA file for mapping.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tombo
- build_model
- event_resquiggle
