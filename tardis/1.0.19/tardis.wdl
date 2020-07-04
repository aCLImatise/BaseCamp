version 1.0

task Tardis {
  input {
    Boolean? in_workflow
    String? chunksize
    String? from_record
    String? to_record
    String? rather_process_files
    String? rootdir
    Boolean? dry_run
    Boolean? keep_conditioned_data
    File? job_file
    String? templatedir
    String? job_template_name
    String? hpc_type
    File? baton_file
    File? runtime_config_source_file
    Boolean? quiet
    File? user_config
    Boolean? no_sysconfig
    String command_to_run
    String arg
  }
  command <<<
    tardis \
      ~{command_to_run} \
      ~{arg} \
      ~{true="--in-workflow" false="" in_workflow} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(from_record) then ("--from-record " +  '"' + from_record + '"') else ""} \
      ~{if defined(to_record) then ("--to-record " +  '"' + to_record + '"') else ""} \
      ~{if defined(rather_process_files) then ("-s " +  '"' + rather_process_files + '"') else ""} \
      ~{if defined(rootdir) then ("--rootdir " +  '"' + rootdir + '"') else ""} \
      ~{true="--dry-run" false="" dry_run} \
      ~{true="--keep-conditioned-data" false="" keep_conditioned_data} \
      ~{if defined(job_file) then ("--job-file " +  '"' + job_file + '"') else ""} \
      ~{if defined(templatedir) then ("--templatedir " +  '"' + templatedir + '"') else ""} \
      ~{if defined(job_template_name) then ("--job-template-name " +  '"' + job_template_name + '"') else ""} \
      ~{if defined(hpc_type) then ("--hpctype " +  '"' + hpc_type + '"') else ""} \
      ~{if defined(baton_file) then ("--batonfile " +  '"' + baton_file + '"') else ""} \
      ~{if defined(runtime_config_source_file) then ("--runtimeconfigsourcefile " +  '"' + runtime_config_source_file + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(user_config) then ("--userconfig " +  '"' + user_config + '"') else ""} \
      ~{true="--no-sysconfig" false="" no_sysconfig}
  >>>
  parameter_meta {
    in_workflow: "Run the command as part of a workflow. After launching all of the jobs, tardis waits for all outputs, which are then collated and merged into a single output file, as specified by the output file path in the original command; all of the temporary input files (for example chunks of uncompressed fastq) are deleted provided all prior steps completed without error (if there was an error they are left there to assist with debugging). Without this option, the program exits immediately after launching all of the jobs, and output is left un-collated in the scratch folder created by this script, and no cleanup is done."
    chunksize: "When conditioning the input file(s), split into files each containing N logical records. (A logical record for a sequence file is a complete sequence. For a text file it is a line of text). (If the -s option is used to sample the inputs, the chunksize relates to the full un-sampled file . so the same chunk-size can be used whether random sampling or not. For example a chunksize of 1,000,000 is specified in combination with a sampling rate of .0001, then each chunk would contain 100 sequences . i.e. you should not adjust the chunk-size, for the sampling rate. Note that to avoid a race-condition that could be caused by a very small chunk-size resulting in launching a very large number of jobs, tardis will throw an exception if the chunk- size used would result in launching more than MAX_DIMENSION jobs (currently 5000) )"
    from_record: "When conditioning the input file(s), only use records from the input file after or including N (where that is logical record number . e.g. in a fastq file, start from record number N means start from sequence N). By combining this option with -to, you can process slices of a file. Note that this option has no affect when processing a list-file."
    to_record: "When conditioning the input file(s), only use records up to and including the record N (where that is logical record number . e.g. in a fastq file, process up to record number N means process up to and including sequence N). By combining this option with -from, you can process slices of a file. Note that this option has no affect when processing a list-file."
    rather_process_files: "Rather than process the entire input file(s), a random sample of the records is processed. RATE is the probability that a given record will be sampled. For example -s .001 will result in roughly 1 in every 1000 logical records being sampled. When the -s option is specified, tardis does not clean up the conditioned input and output . e.g. all of the uncompressed fastq sample fragments would be retained. These are retained to assist with the Q/C work that is normally associated with a sampled run. Paired fastq input files are sampled in lock-step, provided the paired fastq conditioning directive is used for both files."
    rootdir: "create the tardis working folder under DIR. If no working root is specified, a default location is used."
    dry_run: "validate the run by doing a dry run. This means that the chunks, job scripts and job files etc. are all generated but the jobs are not launched. The user can start then kill (CTRL-C) the run, inspect the script and job files that were generated to check that their command has been conditioned as envisaged."
    keep_conditioned_data: "keep the conditioned input and output - i.e. the input and output fragments. Normally in workflow mode these are deleted after the output is successfully \"unconditioned\" - i.e. joined back together"
    job_file: "optionally supply a job template - tardis will read the contents of FILE and use this as the job template."
    templatedir: "template directory"
    job_template_name: "job template name, resolved in template directory"
    hpc_type: "indicate the hpc environment. Currently the only supported values are: condor which results in tardis attempting to set up and launch condor jobs; local which results in each job being launched by tardis itself on the local machine, using the native python sub-process API. The maximum number of processes it will run at a time is controlled by a global variable in the script MAX_PROCESSES, which is initially 10; slurm which results in tardis attempting to set up and launch slurm jobs."
    baton_file: "if you supply a \"baton file\" FILE, tardis will write the process exit code to this file after all processing has completed. This can be useful to preserve synchronous execution of a workflow, even if tardis is started in the background - the workflow can test the existence of the batonfile - if it exists then the corresponding tardis processing step has completed (i.e. another way of each step in a workflow \"passing the baton\" to the next step)"
    runtime_config_source_file: "shell script fragment included in jobs"
    quiet: "run quietly"
    user_config: "user configuration file"
    no_sysconfig: "ignore the system configuration file"
    command_to_run: "command to run"
    arg: "command arguments"
  }
}