version 1.0

task Toilwdlrunner {
  input {
    Directory? job_store
    File? dev_mode
    String? docker_user
    String? dest_bucket
    String wdl_file
    String secondary_file
  }
  command <<<
    toil_wdl_runner \
      ~{wdl_file} \
      ~{secondary_file} \
      ~{if defined(job_store) then ("--jobStore " +  '"' + job_store + '"') else ""} \
      ~{if defined(dev_mode) then ("--dev_mode " +  '"' + dev_mode + '"') else ""} \
      ~{if defined(docker_user) then ("--docker_user " +  '"' + docker_user + '"') else ""} \
      ~{if defined(dest_bucket) then ("--destBucket " +  '"' + dest_bucket + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    job_store: "Optionally specify the directory that outputs are\\nwritten to. Default is the current working dir."
    dev_mode: "1. Creates \\\"AST.out\\\", which holds the printed AST and\\n\\\"mappings.out\\\", which holds the parsed task, workflow\\ndictionaries that were generated. 2. Saves the\\ncompiled toil script generated from the wdl/json files\\nfrom deletion. 3. Skips autorunning the compiled\\npython file."
    docker_user: "The user permissions that the docker containers will\\nbe run with (and the permissions set on any output\\nfiles produced). Default is \\\"root\\\". Setting this to\\nNone will set this to the current user."
    dest_bucket: "Specify a cloud bucket endpoint for output files.\\n"
    wdl_file: "A WDL workflow file."
    secondary_file: "A secondary data file (json)."
  }
  output {
    File out_stdout = stdout()
    File out_dev_mode = "${in_dev_mode}"
  }
}