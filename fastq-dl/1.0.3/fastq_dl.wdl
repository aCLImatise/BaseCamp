version 1.0

task FastqDl {
  input {
    String? aspera
    String? aspera_key
    String? aspera_speed
    Boolean? is_study
    Boolean? is_experiment
    Boolean? is_run
    Boolean? group_by_experiment
    Boolean? group_by_sample
    String? outdir
    String? prefix
    Int? max_attempts
    Int? cpus
    Boolean? ftp_only
    Boolean? sra_only
    Boolean? silent
    Boolean? verbose
    Boolean? debug
  }
  command <<<
    fastq-dl \
      ~{if defined(aspera) then ("--aspera " +  '"' + aspera + '"') else ""} \
      ~{if defined(aspera_key) then ("--aspera_key " +  '"' + aspera_key + '"') else ""} \
      ~{if defined(aspera_speed) then ("--aspera_speed " +  '"' + aspera_speed + '"') else ""} \
      ~{true="--is_study" false="" is_study} \
      ~{true="--is_experiment" false="" is_experiment} \
      ~{true="--is_run" false="" is_run} \
      ~{true="--group_by_experiment" false="" group_by_experiment} \
      ~{true="--group_by_sample" false="" group_by_sample} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(max_attempts) then ("--max_attempts " +  '"' + max_attempts + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{true="--ftp_only" false="" ftp_only} \
      ~{true="--sra_only" false="" sra_only} \
      ~{true="--silent" false="" silent} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    aspera: "Path to the Aspera Connect tool \"ascp\" (Default: \"which ascp\")"
    aspera_key: "Path to Aspera Connect private key, if not given, guess based on ascp path"
    aspera_speed: "Speed at which Aspera Connect will download. (Default: 100M)"
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
    sra_only: "Do not attempt to fall back on ENA if SRA download does not work (e.g. missing FASTQ)."
    silent: "Only critical errors will be printed."
    verbose: "Print debug related text."
    debug: "Skip downloads, print what will be downloaded."
  }
}