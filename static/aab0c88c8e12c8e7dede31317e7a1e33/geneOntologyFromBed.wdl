version 1.0

task GeneOntologyFromBed.py {
  input {
    String modeMode
  }
  command <<<
    geneOntologyFromBed.py \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""}
  >>>
}