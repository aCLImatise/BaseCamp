class: CommandLineTool
id: tombo_event_resquiggle.cwl
inputs:
- id: in_minimap_two_executable
  doc: Path to minimap2 executable.
  type: long?
  inputBinding:
    prefix: --minimap2-executable
- id: in_minimap_two_index
  doc: "Path to minimap2 index (with map-ont preset) file\ncorresponding to the [genome_fasta]\
    \ provided."
  type: long?
  inputBinding:
    prefix: --minimap2-index
- id: in_bwa_mem_executable
  doc: Path to bwa-mem executable.
  type: File?
  inputBinding:
    prefix: --bwa-mem-executable
- id: in_graph_map_executable
  doc: Path to graphmap executable.
  type: File?
  inputBinding:
    prefix: --graphmap-executable
- id: in_alignment_batch_size
  doc: "Number of reads included in each alignment call. Note:\nA new system mapping\
    \ call is made for each batch\n(including loading of the genome), so it is advised\
    \ to\nuse larger values for larger genomes. Default: 1000"
  type: long?
  inputBinding:
    prefix: --alignment-batch-size
- id: in_normalization_type
  doc: "Choices: \"none\": raw 16-bit DAQ values, \"pA_raw\": pA\nas in the ONT events\
    \ (using offset, range and\ndigitization), \"pA\": k-mer-based correction for\
    \ pA\ndrift as in nanopolish (requires [--pore-model-\nfilename]), \"median\"\
    : median and MAD from raw signal.\nDefault: median"
  type: string?
  inputBinding:
    prefix: --normalization-type
- id: in_pore_model_filename
  doc: "File containing kmer model parameters (level_mean and\nlevel_stdv) used in\
    \ order to compute kmer-based\ncorrected pA values. E.g. https://github.com/jts/nanop\n\
    olish/blob/master/etc/r9-models/template_median68pA.5m\ners.model"
  type: File?
  inputBinding:
    prefix: --pore-model-filename
- id: in_outlier_threshold
  doc: "Windosrize the signal at this number of scale values.\nNegative value disables\
    \ outlier clipping. Default:\n5.000000"
  type: long?
  inputBinding:
    prefix: --outlier-threshold
- id: in_obs_per_base_filter
  doc: "Filter reads baseed on observations per base\npercentile thresholds. Format\
    \ thresholds as\n\"percentile:thresh [pctl2:thresh2 ...]\". For example\nto filter\
    \ reads with 99th pctl > 200 obs/base or max >\n5k obs/base use \"99:200 100:5000\"\
    ."
  type: string[]
  inputBinding:
    prefix: --obs-per-base-filter
- id: in_timeout
  doc: "Timeout in seconds for processing a single read.\nDefault: No timeout."
  type: string?
  inputBinding:
    prefix: --timeout
- id: in_cpts_limit
  doc: "Maximum number of changepoints to find within a single\nindel group. Default:\
    \ No limit."
  type: long?
  inputBinding:
    prefix: --cpts-limit
- id: in_skip_index
  doc: "Skip creation of tombo index. This drastically slows\ndownstream tombo commands.\
    \ Default stores tombo index\nnamed \".[--fast5-basedir].[--corrected-\ngroup].tombo.index\"\
    \ to be loaded automatically for\ndownstream commands."
  type: boolean?
  inputBinding:
    prefix: --skip-index
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
- id: in_include_event_stdev
  doc: "Include corrected event standard deviation in output\nFAST5 data."
  type: boolean?
  inputBinding:
    prefix: --include-event-stdev
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
  doc: "FAST5 subgroup(s) (under Analyses/[corrected-group])\ncontaining basecalls.\
    \ Default: ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_processes
  doc: 'Number of processes. Default: 2'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_align_processes
  doc: "Number of processes to use for parsing and aligning\noriginal basecalls. Each\
    \ process will independently\nload the genome into memory, so use caution with\n\
    larger genomes (e.g. human). Default: 1"
  type: long?
  inputBinding:
    prefix: --align-processes
- id: in_align_threads_per_process
  doc: "Number of threads to use for aligner system call.\nDefault: [--processes]\
    \ / (2 * [--align-processes)]"
  type: long?
  inputBinding:
    prefix: --align-threads-per-process
- id: in_re_squiggle_processes
  doc: "Number of processes to use for resquiggle algorithm.\nDefault: [--processes]\
    \ / 2"
  type: long?
  inputBinding:
    prefix: --resquiggle-processes
- id: in_quiet
  doc: Don't print status information.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_fast_five_basedir
  doc: "Directory containing fast5 files. All files ending in\n\"fast5\" found recursively\
    \ within this base directory\nwill be processed."
  type: long
  inputBinding:
    position: 0
- id: in_genome_fast_a
  doc: Path to fasta file for mapping.
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
- event_resquiggle
