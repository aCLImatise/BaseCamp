version 1.0

task UmiSimulator {
  input {
    Int? pcr_cycle
    Int? umi_length
    Int? pool_size
    Int? output_size
    Int? amplification_rate
    Float? pcr_error
    Float? sequencing_error
    String? tasks_simulate_conditions
    Int? task_rep
    Int? cpu
    Int? seed
  }
  command <<<
    umi_simulator \
      ~{if defined(pcr_cycle) then ("--pcr-cycle " +  '"' + pcr_cycle + '"') else ""} \
      ~{if defined(umi_length) then ("--umi-length " +  '"' + umi_length + '"') else ""} \
      ~{if defined(pool_size) then ("--pool-size " +  '"' + pool_size + '"') else ""} \
      ~{if defined(output_size) then ("--output-size " +  '"' + output_size + '"') else ""} \
      ~{if defined(amplification_rate) then ("--amplification-rate " +  '"' + amplification_rate + '"') else ""} \
      ~{if defined(pcr_error) then ("--pcr-error " +  '"' + pcr_error + '"') else ""} \
      ~{if defined(sequencing_error) then ("--sequencing-error " +  '"' + sequencing_error + '"') else ""} \
      ~{if defined(tasks_simulate_conditions) then ("--task " +  '"' + tasks_simulate_conditions + '"') else ""} \
      ~{if defined(task_rep) then ("--task-rep " +  '"' + task_rep + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    pcr_cycle: "number of PCR cycles (default: 10)"
    umi_length: "length of UMI (default: 18)"
    pool_size: "initial pool size (number of molecules before PCR)\\n(default: 100)"
    output_size: "final pool size (sequencing depth, i.e. number of\\nreads sampled from the PCR amplified pool) (default:\\n100)"
    amplification_rate: "successful rate of PCR amplification. The actual\\namplification rate is uniformally distributed between\\nthis number and 1 (default: 0.8)"
    pcr_error: "error rate of PCR amplification (default: 3e-05)"
    sequencing_error: "error rate of sequencing (default: 0.001)"
    tasks_simulate_conditions: "tasks to simulate multiple conditions. Other PCR-\\nrelated arguments are ignored when this option is used\\n(default: None)"
    task_rep: "number of replicates when doing tasks (default: 100)"
    cpu: "Tasks supporting multiprocessing. (default: 16)"
    seed: "starting seed (default: 0)"
  }
  output {
    File out_stdout = stdout()
  }
}