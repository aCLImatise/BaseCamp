version 1.0

task Miso {
  input {
    String? run
    String? event_type
    Boolean? use_cluster
    String? chunk_jobs
    Boolean? no_filter_events
    String? settings_filename
    String? read_len
    String? paired_end
    String? overhang_len
    String? output_dir
    String? job_name
    Boolean? s_gearray
    Boolean? prefilter
    String? number_use_applies
    Boolean? no_wait
    String? view_gene
  }
  command <<<
    miso \
      ~{if defined(run) then ("--run " +  '"' + run + '"') else ""} \
      ~{if defined(event_type) then ("--event-type " +  '"' + event_type + '"') else ""} \
      ~{true="--use-cluster" false="" use_cluster} \
      ~{if defined(chunk_jobs) then ("--chunk-jobs " +  '"' + chunk_jobs + '"') else ""} \
      ~{true="--no-filter-events" false="" no_filter_events} \
      ~{if defined(settings_filename) then ("--settings-filename " +  '"' + settings_filename + '"') else ""} \
      ~{if defined(read_len) then ("--read-len " +  '"' + read_len + '"') else ""} \
      ~{if defined(paired_end) then ("--paired-end " +  '"' + paired_end + '"') else ""} \
      ~{if defined(overhang_len) then ("--overhang-len " +  '"' + overhang_len + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(job_name) then ("--job-name " +  '"' + job_name + '"') else ""} \
      ~{true="--SGEarray" false="" s_gearray} \
      ~{true="--prefilter" false="" prefilter} \
      ~{if defined(number_use_applies) then ("-p " +  '"' + number_use_applies + '"') else ""} \
      ~{true="--no-wait" false="" no_wait} \
      ~{if defined(view_gene) then ("--view-gene " +  '"' + view_gene + '"') else ""}
  >>>
  parameter_meta {
    run: "Compute Psi values for a given GFF annotation of either whole mRNA isoforms or isoforms produced by single alternative splicing events. Expects two arguments: an indexed GFF directory with genes to process, and a sorted, indexed BAM file (with headers) to run on."
    event_type: "[OPTIONAL] Type of event (e.g. SE, RI, A3SS, ...)"
    use_cluster: "Run events on cluster."
    chunk_jobs: "Size (in number of events) of each job to chunk events file into. Only applies when running on cluster."
    no_filter_events: "Do not filter events for computing Psi. By default, MISO computes Psi only for events that have a sufficient number of junction reads. The default filter varies by event type."
    settings_filename: "Filename specifying MISO settings."
    read_len: "Length of sequenced reads."
    paired_end: "Run in paired-end mode. Takes mean and standard deviation of insert length distribution."
    overhang_len: "Length of overhang constraints imposed on junctions."
    output_dir: "Directory for MISO output."
    job_name: "Name for jobs submitted to queue for SGE jobs. Default is misojob"
    s_gearray: "Use MISO on cluster with Sun Grid Engine. To be used in conjunction with --use-cluster option."
    prefilter: "Prefilter events based on coverage. If given as argument, run will begin by mapping BAM reads to event regions (using bedtools), and omit events that do not meet coverage criteria from the run. By default, turned off. Note that events that do not meet the coverage criteria will not be processed regardless, but --prefilter simply does this filtering step at the start of the run, potentially saving computation time so that low coverage events will not be processed or distributed to jobs if MISO is run on a cluster. This options requires bedtools to be installed and available on path."
    number_use_applies: "Number of processors to use. Only applies when running MISO on a single machine with multiple cores; does not apply to runs submitted to cluster with --use-cluster."
    no_wait: "If passed in, do not wait on cluster jobs after they are submitted. By default, wait."
    view_gene: "View the contents of a gene/event that has been indexed. Takes as input an indexed (.pickle) filename."
  }
}