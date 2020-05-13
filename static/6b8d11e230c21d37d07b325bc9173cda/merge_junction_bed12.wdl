version 1.0

task MergeJunctionBed12.py {
  input {
    String delimDelim
    String threadsThreads
    Boolean topTopHat
    String outputOutput
    String? bedBed
  }
  command <<<
    merge_junction_bed12.py \
      ~{bedBed} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--tophat" false="" topTopHat} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}