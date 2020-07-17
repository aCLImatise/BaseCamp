version 1.0

task EnaDl {
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
    Int? max_retry
    Boolean? ftp_only
    Boolean? silent
    Boolean? debug
    String accession
  }
  command <<<
    ena-dl \
      ~{accession} \
      ~{if defined(aspera) then ("--aspera " +  '"' + aspera + '"') else ""} \
      ~{if defined(aspera_key) then ("--aspera_key " +  '"' + aspera_key + '"') else ""} \
      ~{if defined(aspera_speed) then ("--aspera_speed " +  '"' + aspera_speed + '"') else ""} \
      ~{true="--is_study" false="" is_study} \
      ~{true="--is_experiment" false="" is_experiment} \
      ~{true="--is_run" false="" is_run} \
      ~{true="--group_by_experiment" false="" group_by_experiment} \
      ~{true="--group_by_sample" false="" group_by_sample} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(max_retry) then ("--max_retry " +  '"' + max_retry + '"') else ""} \
      ~{true="--ftp_only" false="" ftp_only} \
      ~{true="--silent" false="" silent} \
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
    max_retry: "Maximum times to retry downloads (Default: 10)"
    ftp_only: "FTP only downloads."
    silent: "Only critical errors will be printed."
    debug: "Skip downloads, print what will be downloaded."
    accession: "ENA accession to query. (Study, Experiment, or Run accession)"
  }
}