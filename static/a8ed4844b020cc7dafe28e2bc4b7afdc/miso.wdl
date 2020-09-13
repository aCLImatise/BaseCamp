version 1.0

task Miso {
  input {
    File? run
    Int? event_type
    Boolean? use_cluster
    Int? chunk_jobs
    Boolean? no_filter_events
    File? settings_filename
    Int? read_len
    Int? paired_end
    Int? overhang_len
    Directory? output_dir
    String? job_name
    Boolean? s_gearray
    Boolean? prefilter
    Int? number_use_applies
    Boolean? no_wait
    File? view_gene
  }
  command <<<
    miso \
      ~{if defined(run) then ("--run " +  '"' + run + '"') else ""} \
      ~{if defined(event_type) then ("--event-type " +  '"' + event_type + '"') else ""} \
      ~{if (use_cluster) then "--use-cluster" else ""} \
      ~{if defined(chunk_jobs) then ("--chunk-jobs " +  '"' + chunk_jobs + '"') else ""} \
      ~{if (no_filter_events) then "--no-filter-events" else ""} \
      ~{if defined(settings_filename) then ("--settings-filename " +  '"' + settings_filename + '"') else ""} \
      ~{if defined(read_len) then ("--read-len " +  '"' + read_len + '"') else ""} \
      ~{if defined(paired_end) then ("--paired-end " +  '"' + paired_end + '"') else ""} \
      ~{if defined(overhang_len) then ("--overhang-len " +  '"' + overhang_len + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(job_name) then ("--job-name " +  '"' + job_name + '"') else ""} \
      ~{if (s_gearray) then "--SGEarray" else ""} \
      ~{if (prefilter) then "--prefilter" else ""} \
      ~{if defined(number_use_applies) then ("-p " +  '"' + number_use_applies + '"') else ""} \
      ~{if (no_wait) then "--no-wait" else ""} \
      ~{if defined(view_gene) then ("--view-gene " +  '"' + view_gene + '"') else ""}
  >>>
  parameter_meta {
    run: "Compute Psi values for a given GFF annotation of\\neither whole mRNA isoforms or isoforms produced by\\nsingle alternative splicing events. Expects two\\narguments: an indexed GFF directory with genes to\\nprocess, and a sorted, indexed BAM file (with headers)\\nto run on."
    event_type: "[OPTIONAL] Type of event (e.g. SE, RI, A3SS, ...)"
    use_cluster: "Run events on cluster."
    chunk_jobs: "Size (in number of events) of each job to chunk events\\nfile into. Only applies when running on cluster."
    no_filter_events: "Do not filter events for computing Psi. By default,\\nMISO computes Psi only for events that have a\\nsufficient number of junction reads. The default\\nfilter varies by event type."
    settings_filename: "Filename specifying MISO settings."
    read_len: "Length of sequenced reads."
    paired_end: "Run in paired-end mode. Takes mean and standard\\ndeviation of insert length distribution."
    overhang_len: "Length of overhang constraints imposed on junctions."
    output_dir: "Directory for MISO output."
    job_name: "Name for jobs submitted to queue for SGE jobs. Default\\nis misojob"
    s_gearray: "Use MISO on cluster with Sun Grid Engine. To be used\\nin conjunction with --use-cluster option."
    prefilter: "Prefilter events based on coverage. If given as\\nargument, run will begin by mapping BAM reads to event\\nregions (using bedtools), and omit events that do not\\nmeet coverage criteria from the run. By default,\\nturned off. Note that events that do not meet the\\ncoverage criteria will not be processed regardless,\\nbut --prefilter simply does this filtering step at the\\nstart of the run, potentially saving computation time\\nso that low coverage events will not be processed or\\ndistributed to jobs if MISO is run on a cluster. This\\noptions requires bedtools to be installed and\\navailable on path."
    number_use_applies: "Number of processors to use. Only applies when running\\nMISO on a single machine with multiple cores; does not\\napply to runs submitted to cluster with --use-cluster."
    no_wait: "If passed in, do not wait on cluster jobs after they\\nare submitted. By default, wait."
    view_gene: "View the contents of a gene/event that has been\\nindexed. Takes as input an indexed (.pickle) filename.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}