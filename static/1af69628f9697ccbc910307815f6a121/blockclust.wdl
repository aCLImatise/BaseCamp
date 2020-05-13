version 1.0

task Blockclust.py {
  input {
    String modeMode
    String acceptAccept
    String rejectReject
    String testTestInput
    String outOut
    String configConfig
    Boolean classifyClassify
    String clClMode
    String modelModelDir
    String cmCmSearchOut
    String clustClustBed
    String bamBam
    String tagsTagsBed
    String simSimTab
    String rfRfAmMap
    Boolean noNoChr
  }
  command <<<
    blockclust.py \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(acceptAccept) then ("--accept " +  '"' + acceptAccept + '"') else ""} \
      ~{if defined(rejectReject) then ("--reject " +  '"' + rejectReject + '"') else ""} \
      ~{if defined(testTestInput) then ("--test_input " +  '"' + testTestInput + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--classify" false="" classifyClassify} \
      ~{if defined(clClMode) then ("--clmode " +  '"' + clClMode + '"') else ""} \
      ~{if defined(modelModelDir) then ("--model_dir " +  '"' + modelModelDir + '"') else ""} \
      ~{if defined(cmCmSearchOut) then ("--cmsearch_out " +  '"' + cmCmSearchOut + '"') else ""} \
      ~{if defined(clustClustBed) then ("--clust_bed " +  '"' + clustClustBed + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(tagsTagsBed) then ("--tags_bed " +  '"' + tagsTagsBed + '"') else ""} \
      ~{if defined(simSimTab) then ("--sim_tab " +  '"' + simSimTab + '"') else ""} \
      ~{if defined(rfRfAmMap) then ("--rfam_map " +  '"' + rfRfAmMap + '"') else ""} \
      ~{true="--no_chr" false="" noNoChr}
  >>>
}