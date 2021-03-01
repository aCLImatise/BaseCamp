version 1.0

task SlurmSrst2py {
  input {
    String? var_output
    Int? wall_time
    Int? memory
    Directory? run_dir
    Int? threads
    File? script
    Array[String] input_se
    Array[String] input_pe
    Int? forward
    Int? reverse
    String? other_args
  }
  command <<<
    slurm_srst2_py \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(wall_time) then ("--walltime " +  '"' + wall_time + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(run_dir) then ("--rundir " +  '"' + run_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(script) then ("--script " +  '"' + script + '"') else ""} \
      ~{if defined(input_se) then ("--input_se " +  '"' + input_se + '"') else ""} \
      ~{if defined(input_pe) then ("--input_pe " +  '"' + input_pe + '"') else ""} \
      ~{if defined(forward) then ("--forward " +  '"' + forward + '"') else ""} \
      ~{if defined(reverse) then ("--reverse " +  '"' + reverse + '"') else ""} \
      ~{if defined(other_args) then ("--other_args " +  '"' + other_args + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_output: "[--input_se INPUT_SE [INPUT_SE ...]]"
    wall_time: "wall time (default 0-1:0 = 1 h)"
    memory: "mem (default 4096 = 4gb)"
    run_dir: "directory to run in (default current dir)"
    threads: "number of CPUs per job"
    script: "path to srst2.py"
    input_se: "Single end read file(s) for analysing (may be gzipped)"
    input_pe: "Paired end read files for analysing (may be gzipped)"
    forward: "Designator for forward reads (only used if NOT in\\nMiSeq format sample_S1_L001_R1_001.fastq.gz; otherwise\\ndefault is _1, i.e. expect forward reads as\\nsample_1.fastq.gz)"
    reverse: "Designator for reverse reads (only used if NOT in\\nMiSeq format sample_S1_L001_R2_001.fastq.gz; otherwise\\ndefault is _2, i.e. expect forward reads as\\nsample_2.fastq.gz)"
    other_args: "string containing all other arguments to pass to srst2\\n"
  }
  output {
    File out_stdout = stdout()
  }
}