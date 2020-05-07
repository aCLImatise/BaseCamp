version 1.0

task SnaptoolsIndexGenome {
  input {
    String inputInputFastA
    String outputOutputPrefix
    String alignerAligner
    File pathPathToAligner
    String numNumThreads
  }
  command <<<
    snaptools index-genome \
      ~{if defined(inputInputFastA) then ("--input-fasta " +  '"' + inputInputFastA + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(pathPathToAligner) then ("--path-to-aligner " +  '"' + pathPathToAligner + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""}
  >>>
}