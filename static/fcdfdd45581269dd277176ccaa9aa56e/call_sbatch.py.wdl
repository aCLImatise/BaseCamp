version 1.0

task CallSbatchpy {
  input {
    Int? num_cpus
    Int? mem
    Int? time
    String? partitions
    Boolean? no_output
    Boolean? no_error
    File? stdout_file
    File? stderr_file
    Boolean? do_not_call
    Boolean? use_slur_m
    Boolean? mail_type
    String? mail_user
    String cmd
  }
  command <<<
    call_sbatch_py \
      ~{cmd} \
      ~{if defined(num_cpus) then ("--num-cpus " +  '"' + num_cpus + '"') else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(partitions) then ("--partitions " +  '"' + partitions + '"') else ""} \
      ~{if (no_output) then "--no-output" else ""} \
      ~{if (no_error) then "--no-error" else ""} \
      ~{if defined(stdout_file) then ("--stdout-file " +  '"' + stdout_file + '"') else ""} \
      ~{if defined(stderr_file) then ("--stderr-file " +  '"' + stderr_file + '"') else ""} \
      ~{if (do_not_call) then "--do-not-call" else ""} \
      ~{if (use_slur_m) then "--use-slurm" else ""} \
      ~{if (mail_type) then "--mail-type" else ""} \
      ~{if defined(mail_user) then ("--mail-user " +  '"' + mail_user + '"') else ""}
  >>>
  parameter_meta {
    num_cpus: "The number of CPUs to use (default: 1)"
    mem: "The amount of RAM to request (default: 10G)"
    time: "The amount of time to request (default: 0-05:59)"
    partitions: "The partitions to request (default: general)"
    no_output: "If this flag is present, stdout will be redirected to\\n/dev/null (default: False)"
    no_error: "If this flag is present, stderr will be redirected to\\n/dev/null (default: False)"
    stdout_file: "If this is present and the --no-output flag is not\\ngiven, then stdout will be directed to this file\\nrather than slurm-<job>.out (default: None)"
    stderr_file: "If this is present and the --no-error flag is not\\ngiven, then stderr will be directed to this file\\nrather than slurm-<job>.err (default: None)"
    do_not_call: "If this flag is present, then the commands will not be\\nexecuted (but will be printed). (default: False)"
    use_slur_m: "If this flag is present, the program calls will be\\nsubmitted to SLURM. (default: False)"
    mail_type: "[{NONE,BEGIN,END,FAIL,REQUEUE,ALL,STAGE_OUT,TIME_LIMIT,TIME_LIMIT_90,TIME_LIMIT_80,TIME_LIMIT_50,ARRAY_TASKS} [{NONE,BEGIN,END,FAIL,REQUEUE,ALL,STAGE_OUT,TIME_LIMIT,TIME_LIMIT_90,TIME_LIMIT_80,TIME_LIMIT_50,ARRAY_TASKS} ...]]\\nWhen to send an email notifcation of the job status.\\nSee official documentation for a description of the\\nvalues. If a mail-user is not specified, this will\\nrevert to 'None'. (default: ['FAIL', 'TIME_LIMIT'])"
    mail_user: "To whom an email will be sent, in accordance with\\nmail-type (default: None)\\n"
    cmd: "The command to execute"
  }
  output {
    File out_stdout = stdout()
    File out_stdout_file = "${in_stdout_file}"
  }
}