version 1.0

task Hitac.pyTrain {
  input {
    String kmKmEr
    String threadsThreads
    String? trainTrain
    String? testTest
    String? predictionsPredictions
  }
  command <<<
    hitac.py train \
      ~{trainTrain} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{testTest} \
      ~{predictionsPredictions}
  >>>
}