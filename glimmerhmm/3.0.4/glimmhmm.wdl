version 1.0

task Glimmhmm.plTrainDir {
  input {
    String? glimmerGlimmerHmmProgram
    String? fastFastAFile
    String? trainTrainDir
  }
  command <<<
    glimmhmm.pl train_dir \
      ~{glimmerGlimmerHmmProgram} \
      ~{fastFastAFile} \
      ~{trainTrainDir}
  >>>
}