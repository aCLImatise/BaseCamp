version 1.0

task Recycle.py {
  input {
    String graphGraph
    Int maxMaxK
    String bamBam
    Int lengthLength
    Int maxMaxCv
    String isoIso
    String outputOutputDir
  }
  command <<<
    recycle.py \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{if defined(maxMaxK) then ("--max_k " +  '"' + maxMaxK + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(maxMaxCv) then ("--max_CV " +  '"' + maxMaxCv + '"') else ""} \
      ~{if defined(isoIso) then ("--iso " +  '"' + isoIso + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}