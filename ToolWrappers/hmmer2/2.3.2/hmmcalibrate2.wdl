version 1.0

task Hmmcalibrate2 {
  input {
    String? cpu
    Int? fixed
    File? hist_file
    Int? mean
    Int? num
    Boolean? pvm
    Int? sd
    String? seed
    Boolean? options
    String hmmcalibrate
    String hmm_file
  }
  command <<<
    hmmcalibrate2 \
      ~{hmmcalibrate} \
      ~{hmm_file} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(fixed) then ("--fixed " +  '"' + fixed + '"') else ""} \
      ~{if defined(hist_file) then ("--histfile " +  '"' + hist_file + '"') else ""} \
      ~{if defined(mean) then ("--mean " +  '"' + mean + '"') else ""} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if (pvm) then "--pvm" else ""} \
      ~{if defined(sd) then ("--sd " +  '"' + sd + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cpu: ": run <n> threads in parallel (if threaded)"
    fixed: ": fix random sequence length at <n>"
    hist_file: ": save histogram(s) to file <f>"
    mean: ": set random seq length mean at <x> [350]"
    num: ": set number of sampled seqs to <n> [5000]"
    pvm: ": run on a Parallel Virtual Machine (PVM)"
    sd: ": set random seq length std. dev to <x> [350]"
    seed: ": set random seed to <n> [time()]"
    options: ""
    hmmcalibrate: ""
    hmm_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}