version 1.0

task Glimmerhmm {
  input {
    String? genomeGenome1File
    String? trainingTrainingDirForGenome1
  }
  command <<<
    glimmerhmm \
      ~{genomeGenome1File} \
      ~{trainingTrainingDirForGenome1}
  >>>
}