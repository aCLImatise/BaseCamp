version 1.0

task Tardis {
  input {
    Boolean inInWorkflow
    String chunksizeChunksize
    String fromFromRecord
    String toToRecord
    String sS
    String rootdirRootdir
    Boolean dryDryRun
    Boolean keepKeepConditionedData
    File jobJobFile
    String templatedirTemplatedir
    String jobJobTemplateName
    String hpcHpcType
    File batonBatonFile
    File runtimeRuntimeConfigSourceFile
    Boolean quietQuiet
    File userUserConfig
    Boolean noNoSysconfig
    String? commandCommand
    String? argArg
  }
  command <<<
    tardis \
      ~{commandCommand} \
      ~{true="--in-workflow" false="" inInWorkflow} \
      ~{if defined(chunksizeChunksize) then ("--chunksize " +  '"' + chunksizeChunksize + '"') else ""} \
      ~{if defined(fromFromRecord) then ("--from-record " +  '"' + fromFromRecord + '"') else ""} \
      ~{if defined(toToRecord) then ("--to-record " +  '"' + toToRecord + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(rootdirRootdir) then ("--rootdir " +  '"' + rootdirRootdir + '"') else ""} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--keep-conditioned-data" false="" keepKeepConditionedData} \
      ~{if defined(jobJobFile) then ("--job-file " +  '"' + jobJobFile + '"') else ""} \
      ~{if defined(templatedirTemplatedir) then ("--templatedir " +  '"' + templatedirTemplatedir + '"') else ""} \
      ~{if defined(jobJobTemplateName) then ("--job-template-name " +  '"' + jobJobTemplateName + '"') else ""} \
      ~{if defined(hpcHpcType) then ("--hpctype " +  '"' + hpcHpcType + '"') else ""} \
      ~{if defined(batonBatonFile) then ("--batonfile " +  '"' + batonBatonFile + '"') else ""} \
      ~{if defined(runtimeRuntimeConfigSourceFile) then ("--runtimeconfigsourcefile " +  '"' + runtimeRuntimeConfigSourceFile + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(userUserConfig) then ("--userconfig " +  '"' + userUserConfig + '"') else ""} \
      ~{true="--no-sysconfig" false="" noNoSysconfig} \
      ~{argArg}
  >>>
}