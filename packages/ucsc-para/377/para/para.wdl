version 1.0

task Para {
  input {
    Int? cpu
    Int? ram
    File? batch
    Int? retries
    Int? max_queue
    Int? min_push
    Int? max_push
    Int? warn_time
    Int? kill_time
    Int? delay_time
    Int? priority
    Int? max_job
    File? job_cwd
    Int? verbose
  }
  command <<<
    para \
      ~{if defined(cpu) then ("-cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(ram) then ("-ram " +  '"' + ram + '"') else ""} \
      ~{if defined(batch) then ("-batch " +  '"' + batch + '"') else ""} \
      ~{if defined(retries) then ("-retries " +  '"' + retries + '"') else ""} \
      ~{if defined(max_queue) then ("-maxQueue " +  '"' + max_queue + '"') else ""} \
      ~{if defined(min_push) then ("-minPush " +  '"' + min_push + '"') else ""} \
      ~{if defined(max_push) then ("-maxPush " +  '"' + max_push + '"') else ""} \
      ~{if defined(warn_time) then ("-warnTime " +  '"' + warn_time + '"') else ""} \
      ~{if defined(kill_time) then ("-killTime " +  '"' + kill_time + '"') else ""} \
      ~{if defined(delay_time) then ("-delayTime " +  '"' + delay_time + '"') else ""} \
      ~{if defined(priority) then ("-priority " +  '"' + priority + '"') else ""} \
      ~{if defined(max_job) then ("-maxJob " +  '"' + max_job + '"') else ""} \
      ~{if defined(job_cwd) then ("-jobCwd " +  '"' + job_cwd + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    cpu: "Number of CPUs used by the jobs, default 1."
    ram: "Number of bytes of RAM used by the jobs.\\nDefault is RAM on node divided by number of cpus on node.\\nShorthand expressions allow t,g,m,k for tera, giga, mega, kilo.\\ne.g. 4g = 4 Gigabytes."
    batch: "- specify the directory path that is used to store the\\nbatch control files.  The batchDir can be an absolute path or a path\\nrelative to the current directory.  The resulting path is use as the\\nbatch name.  The directory is created if it doesn't exist.  When\\ncreating a new batch, batchDir should not have been previously used as\\na batch name.  The batchDir must be writable by the paraHub process.\\nThis does not affect the working directory assigned to jobs.  It defaults\\nto the directory where para is run.  If used, this option must be specified\\non all para commands for the  batch.  For example to run two batches in the\\nsame directory:\\npara -batch=b1 make jobs1\\npara -batch=b2 make jobs2"
    retries: "Number of retries per job - default 4."
    max_queue: "Number of jobs to allow on parasol queue.\\nDefault 2000000."
    min_push: "Minimum number of jobs to queue.\\nDefault 1.  Overrides maxQueue."
    max_push: "Maximum number of jobs to queue - default 100000."
    warn_time: "Number of minutes job runs before hang warning.\\nDefault 4320 (3 days)."
    kill_time: "Number of minutes hung job runs before push kills it.\\nBy default kill off for backwards compatibility."
    delay_time: "Number of seconds to delay before submitting next job\\nto minimize i/o load at startup - default 0."
    priority: "Set batch priority to high, medium, or low.\\nDefault medium (use high only with approval).\\nIf needed, use with make, push, create, shove, or try.\\nOr, set batch priority to a specific numeric value - default 10.\\n1 is emergency high priority,\\n10 is normal medium,\\n100 is low for bottomfeeders.\\nSetting priority higher than normal (1-9) will be logged.\\nPlease keep low priority jobs short, they won't be pre-empted."
    max_job: "Limit the number of jobs the batch can run.\\nSpecify number of jobs, for example 10 or 'unlimited'.\\nDefault unlimited displays as -1."
    job_cwd: "- specify the directory path to use as the current working\\ndirectory for each job.  The dir can be an absolute path or a path\\nrelative to the current directory. It defaults to the directory where\\npara is run."
    verbose: "- set verbosity level."
  }
  output {
    File out_stdout = stdout()
  }
}