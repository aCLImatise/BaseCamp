version 1.0

task Enadl {
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
    Int? max_retry
    Boolean? ftp_only
    Boolean? silent
    Boolean? debug
  }
  command <<<
    ena_dl \
      ~{if defined(aspera) then ("--aspera " +  '"' + aspera + '"') else ""} \
      ~{if defined(aspera_key) then ("--aspera_key " +  '"' + aspera_key + '"') else ""} \
      ~{if defined(aspera_speed) then ("--aspera_speed " +  '"' + aspera_speed + '"') else ""} \
      ~{if (is_study) then "--is_study" else ""} \
      ~{if (is_experiment) then "--is_experiment" else ""} \
      ~{if (is_run) then "--is_run" else ""} \
      ~{if (group_by_experiment) then "--group_by_experiment" else ""} \
      ~{if (group_by_sample) then "--group_by_sample" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(max_retry) then ("--max_retry " +  '"' + max_retry + '"') else ""} \
      ~{if (ftp_only) then "--ftp_only" else ""} \
      ~{if (silent) then "--silent" else ""} \
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
    max_retry: "Maximum times to retry downloads (Default: 10)"
    ftp_only: "FTP only downloads."
    silent: "Only critical errors will be printed."
    debug: "Skip downloads, print what will be downloaded."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}