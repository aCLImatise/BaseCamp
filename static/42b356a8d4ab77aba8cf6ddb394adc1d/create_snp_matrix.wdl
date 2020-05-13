version 1.0

task CreateSnpMatrix.py {
  input {
    Boolean forceForce
    String consConsFilename
    File outputOutput
    Boolean vV
    String? sampleSampleDirsFile
  }
  command <<<
    create_snp_matrix.py \
      ~{sampleSampleDirsFile} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(consConsFilename) then ("--consFileName " +  '"' + consConsFilename + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}