version 1.0

task Eoulsan.sh {
  input {
    Boolean aboutAbout
    File confConf
    File jJ
    String jJ
    Boolean licenseLicense
    File logLog
    String loglevelLoglevel
    Int mM
    String pP
    Boolean sS
    Boolean versionVersion
    File wW
    Boolean createCreateDesign
    Boolean formatsFormats
    Boolean hadHadOopExec
    Boolean s3S3Upload
    Boolean itIt
    Boolean modulesModules
    Boolean emrEmrExec
    Boolean clusterClusterExec
    Boolean createCreateHadOopJar
    Boolean execExec
    Boolean infoInfo
  }
  command <<<
    eoulsan.sh \
      ~{true="-about" false="" aboutAbout} \
      ~{if defined(confConf) then ("-conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(jJ) then ("-J " +  '"' + jJ + '"') else ""} \
      ~{true="-license" false="" licenseLicense} \
      ~{if defined(logLog) then ("-log " +  '"' + logLog + '"') else ""} \
      ~{if defined(loglevelLoglevel) then ("-loglevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-version" false="" versionVersion} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{true="- createdesign" false="" createCreateDesign} \
      ~{true="- formats" false="" formatsFormats} \
      ~{true="- hadoopexec" false="" hadHadOopExec} \
      ~{true="- s3upload" false="" s3S3Upload} \
      ~{true="- it" false="" itIt} \
      ~{true="- modules" false="" modulesModules} \
      ~{true="- emrexec" false="" emrEmrExec} \
      ~{true="- clusterexec" false="" clusterClusterExec} \
      ~{true="- createhadoopjar" false="" createCreateHadOopJar} \
      ~{true="- exec" false="" execExec} \
      ~{true="- info" false="" infoInfo}
  >>>
}