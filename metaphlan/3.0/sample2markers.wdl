version 1.0

task Sample2markers.py {
  input {
    Array[String]+ inputInput
    Boolean sortedSorted
    String inputInputFormat
    String outputOutputDir
    String breathBreathThreshold
    String nprocsNprocs
  }
  command <<<
    sample2markers.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--sorted" false="" sortedSorted} \
      ~{if defined(inputInputFormat) then ("--input_format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(breathBreathThreshold) then ("--breath_threshold " +  '"' + breathBreathThreshold + '"') else ""} \
      ~{if defined(nprocsNprocs) then ("--nprocs " +  '"' + nprocsNprocs + '"') else ""}
  >>>
}