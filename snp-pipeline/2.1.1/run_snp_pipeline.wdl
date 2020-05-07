version 1.0

task RunSnpPipeline.sh {
  input {
    Boolean forceForce
    String mirrorMirror
    File confConf
    String qQ
    String outOutDir
    String samplesSamplesDir
    File samplesSamplesFile
    Boolean purgePurge
    Boolean vV
    String? referenceReferenceFile
  }
  command <<<
    run_snp_pipeline.sh \
      ~{referenceReferenceFile} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(mirrorMirror) then ("--mirror " +  '"' + mirrorMirror + '"') else ""} \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(samplesSamplesDir) then ("--samples_dir " +  '"' + samplesSamplesDir + '"') else ""} \
      ~{if defined(samplesSamplesFile) then ("--samples_file " +  '"' + samplesSamplesFile + '"') else ""} \
      ~{true="--purge" false="" purgePurge} \
      ~{true="-v" false="" vV}
  >>>
}