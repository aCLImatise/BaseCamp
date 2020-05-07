version 1.0

task SketchySurveyMashdist {
  input {
    File fastFastA
    File indexIndex
    File outputOutput
    String kmKmErSize
    Int sketchSketchSize
  }
  command <<<
    sketchy survey mashdist \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmer_size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(sketchSketchSize) then ("--sketch_size " +  '"' + sketchSketchSize + '"') else ""}
  >>>
}