version 1.0

task ToilWdlRunner {
  input {
    String? outdir
    String? dev_mode
    String? docker_user
    String? dest_bucket
    String? job_store
    String wdl_file
    String secondary_file
  }
  command <<<
    toil-wdl-runner \
      ~{wdl_file} \
      ~{secondary_file} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(dev_mode) then ("--dev_mode " +  '"' + dev_mode + '"') else ""} \
      ~{if defined(docker_user) then ("--docker_user " +  '"' + docker_user + '"') else ""} \
      ~{if defined(dest_bucket) then ("--destBucket " +  '"' + dest_bucket + '"') else ""} \
      ~{if defined(job_store) then ("--jobStore " +  '"' + job_store + '"') else ""}
  >>>
  parameter_meta {
    outdir: "Optionally specify the directory that outputs are written to. Default is the current working dir."
    dev_mode: "1. Creates \"AST.out\", which holds the printed AST and \"mappings.out\", which holds the parsed task, workflow dictionaries that were generated. 2. Saves the compiled toil script generated from the wdl/json files from deletion. 3. Skips autorunning the compiled python file."
    docker_user: "The user permissions that the docker containers will be run with (and the permissions set on any output files produced). Default is \"root\". Setting this to None will set this to the current user."
    dest_bucket: "Specify a cloud bucket endpoint for output files."
    job_store: ""
    wdl_file: "A WDL workflow file."
    secondary_file: "A secondary data file (json)."
  }
}