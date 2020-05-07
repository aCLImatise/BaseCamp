version 1.0

task RunProkka {
  input {
    String threadsThreads
    Boolean verboseVerbose
    Array[String]+ inputInput
    String outOutDir
    Boolean forceForce
    String addAddProKkACmds
    String numNumTraining
  }
  command <<<
    run_prokka \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(addAddProKkACmds) then ("--add_prokka_cmds " +  '"' + addAddProKkACmds + '"') else ""} \
      ~{if defined(numNumTraining) then ("--num_training " +  '"' + numNumTraining + '"') else ""}
  >>>
}