version 1.0

task OmeroImport {
  input {
    Boolean javaJavaHelp
    Boolean createCreate
    String serverServer
    String portPort
    String groupGroup
    String userUser
    String passwordPassword
    String keyKey
    String sudoSudo
    Boolean quietQuiet
    Boolean bulkBulk
    Boolean logLogPrefix
    Boolean fileFile
    Boolean errsErrs
    String clientClientDir
    String logLogBack
    String depthDepth
    String skipSkip
    String nameName
    String descriptionDescription
    Boolean reportReport
    Boolean uploadUpload
    Boolean logsLogs
    String emailEmail
    String annotationAnnotationNs
    String annotationAnnotationText
    String annotationAnnotationLink
    Boolean fF
    Boolean cC
    String readersReaders
    String dD
    String rR
    String targetTarget
    String debugDebug
    String outputOutput
    String encryptedEncrypted
    Boolean advancedAdvancedHelp
    Boolean transferTransfer
    Boolean excludeExclude
    Boolean checksumChecksumAlgorithm
    String parallelParallelUpload
    String parallelParallelFileset
    String? omerOmerOUserdir
    String? omerOmerOSessionDir
    String? omerOmerOTmpdir
    String? omerOmerOPassword
    File? pathPath
  }
  command <<<
    omero import \
      ~{omerOmerOUserdir} \
      ~{pathPath} \
      ~{true="--java-help" false="" javaJavaHelp} \
      ~{true="--create" false="" createCreate} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{if defined(sudoSudo) then ("--sudo " +  '"' + sudoSudo + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--bulk" false="" bulkBulk} \
      ~{true="--logprefix" false="" logLogPrefix} \
      ~{true="--file" false="" fileFile} \
      ~{true="--errs" false="" errsErrs} \
      ~{if defined(clientClientDir) then ("--clientdir " +  '"' + clientClientDir + '"') else ""} \
      ~{if defined(logLogBack) then ("--logback " +  '"' + logLogBack + '"') else ""} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(skipSkip) then ("--skip " +  '"' + skipSkip + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{true="--report" false="" reportReport} \
      ~{true="--upload" false="" uploadUpload} \
      ~{true="--logs" false="" logsLogs} \
      ~{if defined(emailEmail) then ("--email " +  '"' + emailEmail + '"') else ""} \
      ~{if defined(annotationAnnotationNs) then ("--annotation-ns " +  '"' + annotationAnnotationNs + '"') else ""} \
      ~{if defined(annotationAnnotationText) then ("--annotation-text " +  '"' + annotationAnnotationText + '"') else ""} \
      ~{if defined(annotationAnnotationLink) then ("--annotation-link " +  '"' + annotationAnnotationLink + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-c" false="" cC} \
      ~{if defined(readersReaders) then ("--readers " +  '"' + readersReaders + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(debugDebug) then ("--debug " +  '"' + debugDebug + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(encryptedEncrypted) then ("--encrypted " +  '"' + encryptedEncrypted + '"') else ""} \
      ~{true="--advanced-help" false="" advancedAdvancedHelp} \
      ~{true="--transfer" false="" transferTransfer} \
      ~{true="--exclude" false="" excludeExclude} \
      ~{true="--checksum-algorithm" false="" checksumChecksumAlgorithm} \
      ~{if defined(parallelParallelUpload) then ("--parallel-upload " +  '"' + parallelParallelUpload + '"') else ""} \
      ~{if defined(parallelParallelFileset) then ("--parallel-fileset " +  '"' + parallelParallelFileset + '"') else ""} \
      ~{omerOmerOSessionDir} \
      ~{omerOmerOTmpdir} \
      ~{omerOmerOPassword}
  >>>
}