class: CommandLineTool
id: miso.cwl
inputs:
- id: in_run
  doc: "Compute Psi values for a given GFF annotation of\neither whole mRNA isoforms\
    \ or isoforms produced by\nsingle alternative splicing events. Expects two\narguments:\
    \ an indexed GFF directory with genes to\nprocess, and a sorted, indexed BAM file\
    \ (with headers)\nto run on."
  type: File
  inputBinding:
    prefix: --run
- id: in_event_type
  doc: '[OPTIONAL] Type of event (e.g. SE, RI, A3SS, ...)'
  type: long
  inputBinding:
    prefix: --event-type
- id: in_use_cluster
  doc: Run events on cluster.
  type: boolean
  inputBinding:
    prefix: --use-cluster
- id: in_chunk_jobs
  doc: "Size (in number of events) of each job to chunk events\nfile into. Only applies\
    \ when running on cluster."
  type: long
  inputBinding:
    prefix: --chunk-jobs
- id: in_no_filter_events
  doc: "Do not filter events for computing Psi. By default,\nMISO computes Psi only\
    \ for events that have a\nsufficient number of junction reads. The default\nfilter\
    \ varies by event type."
  type: boolean
  inputBinding:
    prefix: --no-filter-events
- id: in_settings_filename
  doc: Filename specifying MISO settings.
  type: File
  inputBinding:
    prefix: --settings-filename
- id: in_read_len
  doc: Length of sequenced reads.
  type: long
  inputBinding:
    prefix: --read-len
- id: in_paired_end
  doc: "Run in paired-end mode. Takes mean and standard\ndeviation of insert length\
    \ distribution."
  type: long
  inputBinding:
    prefix: --paired-end
- id: in_overhang_len
  doc: Length of overhang constraints imposed on junctions.
  type: long
  inputBinding:
    prefix: --overhang-len
- id: in_output_dir
  doc: Directory for MISO output.
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_job_name
  doc: "Name for jobs submitted to queue for SGE jobs. Default\nis misojob"
  type: string
  inputBinding:
    prefix: --job-name
- id: in_s_gearray
  doc: "Use MISO on cluster with Sun Grid Engine. To be used\nin conjunction with\
    \ --use-cluster option."
  type: boolean
  inputBinding:
    prefix: --SGEarray
- id: in_prefilter
  doc: "Prefilter events based on coverage. If given as\nargument, run will begin\
    \ by mapping BAM reads to event\nregions (using bedtools), and omit events that\
    \ do not\nmeet coverage criteria from the run. By default,\nturned off. Note that\
    \ events that do not meet the\ncoverage criteria will not be processed regardless,\n\
    but --prefilter simply does this filtering step at the\nstart of the run, potentially\
    \ saving computation time\nso that low coverage events will not be processed or\n\
    distributed to jobs if MISO is run on a cluster. This\noptions requires bedtools\
    \ to be installed and\navailable on path."
  type: boolean
  inputBinding:
    prefix: --prefilter
- id: in_number_use_applies
  doc: "Number of processors to use. Only applies when running\nMISO on a single machine\
    \ with multiple cores; does not\napply to runs submitted to cluster with --use-cluster."
  type: long
  inputBinding:
    prefix: -p
- id: in_no_wait
  doc: "If passed in, do not wait on cluster jobs after they\nare submitted. By default,\
    \ wait."
  type: boolean
  inputBinding:
    prefix: --no-wait
- id: in_view_gene
  doc: "View the contents of a gene/event that has been\nindexed. Takes as input an\
    \ indexed (.pickle) filename.\n"
  type: File
  inputBinding:
    prefix: --view-gene
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory for MISO output.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- miso
