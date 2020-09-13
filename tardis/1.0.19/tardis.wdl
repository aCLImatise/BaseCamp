version 1.0

task Tardis {
  input {
    Boolean? in_workflow
    Int? chunksize
    Int? from_record
    Int? to_record
    File? rather_process_files
    Directory? rootdir
    Boolean? dry_run
    Boolean? keep_conditioned_data
    File? job_file
    Directory? templatedir
    Directory? job_template_name
    Int? hpc_type
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
      ~{if (in_workflow) then "--in-workflow" else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(from_record) then ("--from-record " +  '"' + from_record + '"') else ""} \
      ~{if defined(to_record) then ("--to-record " +  '"' + to_record + '"') else ""} \
      ~{if defined(rather_process_files) then ("-s " +  '"' + rather_process_files + '"') else ""} \
      ~{if defined(rootdir) then ("--rootdir " +  '"' + rootdir + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (keep_conditioned_data) then "--keep-conditioned-data" else ""} \
      ~{if defined(job_file) then ("--job-file " +  '"' + job_file + '"') else ""} \
      ~{if defined(templatedir) then ("--templatedir " +  '"' + templatedir + '"') else ""} \
      ~{if defined(job_template_name) then ("--job-template-name " +  '"' + job_template_name + '"') else ""} \
      ~{if defined(hpc_type) then ("--hpctype " +  '"' + hpc_type + '"') else ""} \
      ~{if defined(baton_file) then ("--batonfile " +  '"' + baton_file + '"') else ""} \
      ~{if defined(runtime_config_source_file) then ("--runtimeconfigsourcefile " +  '"' + runtime_config_source_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(user_config) then ("--userconfig " +  '"' + user_config + '"') else ""} \
      ~{if (no_sysconfig) then "--no-sysconfig" else ""}
  >>>
  parameter_meta {
    in_workflow: "Run the command as part of a workflow. After launching\\nall of the jobs, tardis waits for all outputs, which\\nare then collated and merged into a single output\\nfile, as specified by the output file path in the\\noriginal command; all of the temporary input files\\n(for example chunks of uncompressed fastq) are deleted\\nprovided all prior steps completed without error (if\\nthere was an error they are left there to assist with\\ndebugging). Without this option, the program exits\\nimmediately after launching all of the jobs, and\\noutput is left un-collated in the scratch folder\\ncreated by this script, and no cleanup is done."
    chunksize: "When conditioning the input file(s), split into files\\neach containing N logical records. (A logical record\\nfor a sequence file is a complete sequence. For a text\\nfile it is a line of text). (If the -s option is used\\nto sample the inputs, the chunksize relates to the\\nfull un-sampled file . so the same chunk-size can be\\nused whether random sampling or not. For example a\\nchunksize of 1,000,000 is specified in combination\\nwith a sampling rate of .0001, then each chunk would\\ncontain 100 sequences . i.e. you should not adjust the\\nchunk-size, for the sampling rate. Note that to avoid\\na race-condition that could be caused by a very small\\nchunk-size resulting in launching a very large number\\nof jobs, tardis will throw an exception if the chunk-\\nsize used would result in launching more than\\nMAX_DIMENSION jobs (currently 5000) )"
    from_record: "When conditioning the input file(s), only use records\\nfrom the input file after or including N (where that\\nis logical record number . e.g. in a fastq file, start\\nfrom record number N means start from sequence N). By\\ncombining this option with -to, you can process slices\\nof a file. Note that this option has no affect when\\nprocessing a list-file."
    to_record: "When conditioning the input file(s), only use records\\nup to and including the record N (where that is\\nlogical record number . e.g. in a fastq file, process\\nup to record number N means process up to and\\nincluding sequence N). By combining this option with\\n-from, you can process slices of a file. Note that\\nthis option has no affect when processing a list-file."
    rather_process_files: "Rather than process the entire input file(s), a random\\nsample of the records is processed. RATE is the\\nprobability that a given record will be sampled. For\\nexample -s .001 will result in roughly 1 in every 1000\\nlogical records being sampled. When the -s option is\\nspecified, tardis does not clean up the conditioned\\ninput and output . e.g. all of the uncompressed fastq\\nsample fragments would be retained. These are retained\\nto assist with the Q/C work that is normally\\nassociated with a sampled run. Paired fastq input\\nfiles are sampled in lock-step, provided the paired\\nfastq conditioning directive is used for both files."
    rootdir: "create the tardis working folder under DIR. If no\\nworking root is specified, a default location is used."
    dry_run: "validate the run by doing a dry run. This means that\\nthe chunks, job scripts and job files etc. are all\\ngenerated but the jobs are not launched. The user can\\nstart then kill (CTRL-C) the run, inspect the script\\nand job files that were generated to check that their\\ncommand has been conditioned as envisaged."
    keep_conditioned_data: "keep the conditioned input and output - i.e. the input\\nand output fragments. Normally in workflow mode these\\nare deleted after the output is successfully\\n\\\"unconditioned\\\" - i.e. joined back together"
    job_file: "optionally supply a job template - tardis will read\\nthe contents of FILE and use this as the job template."
    templatedir: "template directory"
    job_template_name: "job template name, resolved in template directory"
    hpc_type: "indicate the hpc environment. Currently the only\\nsupported values are: condor which results in tardis\\nattempting to set up and launch condor jobs; local\\nwhich results in each job being launched by tardis\\nitself on the local machine, using the native python\\nsub-process API. The maximum number of processes it\\nwill run at a time is controlled by a global variable\\nin the script MAX_PROCESSES, which is initially 10;\\nslurm which results in tardis attempting to set up and\\nlaunch slurm jobs."
    baton_file: "if you supply a \\\"baton file\\\" FILE, tardis will write\\nthe process exit code to this file after all\\nprocessing has completed. This can be useful to\\npreserve synchronous execution of a workflow, even if\\ntardis is started in the background - the workflow can\\ntest the existence of the batonfile - if it exists\\nthen the corresponding tardis processing step has\\ncompleted (i.e. another way of each step in a workflow\\n\\\"passing the baton\\\" to the next step)"
    runtime_config_source_file: "shell script fragment included in jobs"
    quiet: "run quietly"
    user_config: "user configuration file"
    no_sysconfig: "ignore the system configuration file"
    command_to_run: "command to run"
    arg: "command arguments"
  }
  output {
    File out_stdout = stdout()
  }
}