version 1.0

task SlurmSrst2.py {
  input {
    String? wall_time
    String? memory
    String? run_dir
    String? threads
    String? script
    String? identifier_outputs_will
    Array[String] input_se
    Array[String] input_pe
    String? forward
    String? reverse
    String? other_args
  }
  command <<<
    slurm_srst2.py \
      ~{if defined(wall_time) then ("--walltime " +  '"' + wall_time + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(run_dir) then ("--rundir " +  '"' + run_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(script) then ("--script " +  '"' + script + '"') else ""} \
      ~{if defined(identifier_outputs_will) then ("--output " +  '"' + identifier_outputs_will + '"') else ""} \
      ~{if defined(input_se) then ("--input_se " +  '"' + input_se + '"') else ""} \
      ~{if defined(input_pe) then ("--input_pe " +  '"' + input_pe + '"') else ""} \
      ~{if defined(forward) then ("--forward " +  '"' + forward + '"') else ""} \
      ~{if defined(reverse) then ("--reverse " +  '"' + reverse + '"') else ""} \
      ~{if defined(other_args) then ("--other_args " +  '"' + other_args + '"') else ""}
  >>>
  parameter_meta {
    wall_time: "wall time (default 0-1:0 = 1 h)"
    memory: "mem (default 4096 = 4gb)"
    run_dir: "directory to run in (default current dir)"
    threads: "number of CPUs per job"
    script: "path to srst2.py"
    identifier_outputs_will: "identifier for outputs (will be combined with read set identifiers)"
    input_se: "Single end read file(s) for analysing (may be gzipped)"
    input_pe: "Paired end read files for analysing (may be gzipped)"
    forward: "Designator for forward reads (only used if NOT in MiSeq format sample_S1_L001_R1_001.fastq.gz; otherwise default is _1, i.e. expect forward reads as sample_1.fastq.gz)"
    reverse: "Designator for reverse reads (only used if NOT in MiSeq format sample_S1_L001_R2_001.fastq.gz; otherwise default is _2, i.e. expect forward reads as sample_2.fastq.gz)"
    other_args: "string containing all other arguments to pass to srst2"
  }
}