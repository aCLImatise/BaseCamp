class: CommandLineTool
id: miso.cwl
inputs:
- id: run
  doc: 'Compute Psi values for a given GFF annotation of either whole mRNA isoforms
    or isoforms produced by single alternative splicing events. Expects two arguments:
    an indexed GFF directory with genes to process, and a sorted, indexed BAM file
    (with headers) to run on.'
  type: string
  inputBinding:
    prefix: --run
- id: event_type
  doc: '[OPTIONAL] Type of event (e.g. SE, RI, A3SS, ...)'
  type: string
  inputBinding:
    prefix: --event-type
- id: use_cluster
  doc: Run events on cluster.
  type: boolean
  inputBinding:
    prefix: --use-cluster
- id: chunk_jobs
  doc: Size (in number of events) of each job to chunk events file into. Only applies
    when running on cluster.
  type: string
  inputBinding:
    prefix: --chunk-jobs
- id: no_filter_events
  doc: Do not filter events for computing Psi. By default, MISO computes Psi only
    for events that have a sufficient number of junction reads. The default filter
    varies by event type.
  type: boolean
  inputBinding:
    prefix: --no-filter-events
- id: settings_filename
  doc: Filename specifying MISO settings.
  type: string
  inputBinding:
    prefix: --settings-filename
- id: read_len
  doc: Length of sequenced reads.
  type: string
  inputBinding:
    prefix: --read-len
- id: paired_end
  doc: Run in paired-end mode. Takes mean and standard deviation of insert length
    distribution.
  type: string
  inputBinding:
    prefix: --paired-end
- id: overhang_len
  doc: Length of overhang constraints imposed on junctions.
  type: string
  inputBinding:
    prefix: --overhang-len
- id: output_dir
  doc: Directory for MISO output.
  type: string
  inputBinding:
    prefix: --output-dir
- id: job_name
  doc: Name for jobs submitted to queue for SGE jobs. Default is misojob
  type: string
  inputBinding:
    prefix: --job-name
- id: s_gearray
  doc: Use MISO on cluster with Sun Grid Engine. To be used in conjunction with --use-cluster
    option.
  type: boolean
  inputBinding:
    prefix: --SGEarray
- id: prefilter
  doc: Prefilter events based on coverage. If given as argument, run will begin by
    mapping BAM reads to event regions (using bedtools), and omit events that do not
    meet coverage criteria from the run. By default, turned off. Note that events
    that do not meet the coverage criteria will not be processed regardless, but --prefilter
    simply does this filtering step at the start of the run, potentially saving computation
    time so that low coverage events will not be processed or distributed to jobs
    if MISO is run on a cluster. This options requires bedtools to be installed and
    available on path.
  type: boolean
  inputBinding:
    prefix: --prefilter
- id: p
  doc: Number of processors to use. Only applies when running MISO on a single machine
    with multiple cores; does not apply to runs submitted to cluster with --use-cluster.
  type: string
  inputBinding:
    prefix: -p
- id: no_wait
  doc: If passed in, do not wait on cluster jobs after they are submitted. By default,
    wait.
  type: boolean
  inputBinding:
    prefix: --no-wait
- id: view_gene
  doc: View the contents of a gene/event that has been indexed. Takes as input an
    indexed (.pickle) filename.
  type: string
  inputBinding:
    prefix: --view-gene
outputs: []
cwlVersion: v1.1
baseCommand:
- miso
