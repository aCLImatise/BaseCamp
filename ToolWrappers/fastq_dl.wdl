version 1.0

task Fastqdl {
  input {
    File? aspera
    File? aspera_key
    Int? aspera_speed
    Boolean? is_study
    Boolean? is_experiment
    Boolean? is_run
    Boolean? group_by_experiment
    Boolean? group_by_sample
    Directory? outdir
    String? prefix
    Int? max_attempts
    Int? cpus
    Boolean? ftp_only
    Boolean? sra_only
    Boolean? silent
    Boolean? verbose
    Boolean? debug
    String accession
  }
  command <<<
    fastq_dl \
      ~{accession} \
      ~{if defined(aspera) then ("--aspera " +  '"' + aspera + '"') else ""} \
      ~{if defined(aspera_key) then ("--aspera_key " +  '"' + aspera_key + '"') else ""} \
      ~{if defined(aspera_speed) then ("--aspera_speed " +  '"' + aspera_speed + '"') else ""} \
      ~{if (is_study) then "--is_study" else ""} \
      ~{if (is_experiment) then "--is_experiment" else ""} \
      ~{if (is_run) then "--is_run" else ""} \
      ~{if (group_by_experiment) then "--group_by_experiment" else ""} \
      ~{if (group_by_sample) then "--group_by_sample" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(max_attempts) then ("--max_attempts " +  '"' + max_attempts + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (ftp_only) then "--ftp_only" else ""} \
      ~{if (sra_only) then "--sra_only" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    aspera: "Path to the Aspera Connect tool \\\"ascp\\\" (Default:\\n\\\"which ascp\\\")"
    aspera_key: "Path to Aspera Connect private key, if not given,\\nguess based on ascp path"
    aspera_speed: "Speed at which Aspera Connect will download. (Default:\\n100M)"
    is_study: "Query is a Study."
    is_experiment: "Query is an Experiment."
    is_run: "Query is a Run."
    group_by_experiment: "Group Runs by experiment accession."
    group_by_sample: "Group Runs by sample accession."
    outdir: "Directory to output downloads to. (Default: ./)"
    prefix: "Prefix to use for naming log files (Default: fastq)"
    max_attempts: "Maximum number of download attempts (Default: 10)"
    cpus: "Total cpus used for downloading from SRA (Default: 1)"
    ftp_only: "FTP only downloads."
    sra_only: "Do not attempt to fall back on ENA if SRA download\\ndoes not work (e.g. missing FASTQ)."
    silent: "Only critical errors will be printed."
    verbose: "Print debug related text."
    debug: "Skip downloads, print what will be downloaded."
    accession: "ENA/SRA accession to query. (Study, Experiment, or Run\\naccession)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}