version 1.0

task Croo {
  input {
    String outOutDefJson
    String methodMethod
    String ucscUcscGenomeDb
    String ucscUcscGenomePos
    Boolean publicPublicGcs
    Boolean useUsePreSignedUrlS3
    Boolean useUsePreSignedUrlGcs
    String gcpGcpPrivateKey
    String durationDurationPreSignedUrlS3
    String durationDurationPreSignedUrlGcs
    String tsvTsvMappingPathToUrl
    String outOutDir
    String tmpTmpDir
    Boolean useUseGsUtilForS3
    Boolean noNoChecksum
    Boolean debugDebug
    String? metadataMetadataJson
  }
  command <<<
    croo \
      ~{metadataMetadataJson} \
      ~{if defined(outOutDefJson) then ("--out-def-json " +  '"' + outOutDefJson + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(ucscUcscGenomeDb) then ("--ucsc-genome-db " +  '"' + ucscUcscGenomeDb + '"') else ""} \
      ~{if defined(ucscUcscGenomePos) then ("--ucsc-genome-pos " +  '"' + ucscUcscGenomePos + '"') else ""} \
      ~{true="--public-gcs" false="" publicPublicGcs} \
      ~{true="--use-presigned-url-s3" false="" useUsePreSignedUrlS3} \
      ~{true="--use-presigned-url-gcs" false="" useUsePreSignedUrlGcs} \
      ~{if defined(gcpGcpPrivateKey) then ("--gcp-private-key " +  '"' + gcpGcpPrivateKey + '"') else ""} \
      ~{if defined(durationDurationPreSignedUrlS3) then ("--duration-presigned-url-s3 " +  '"' + durationDurationPreSignedUrlS3 + '"') else ""} \
      ~{if defined(durationDurationPreSignedUrlGcs) then ("--duration-presigned-url-gcs " +  '"' + durationDurationPreSignedUrlGcs + '"') else ""} \
      ~{if defined(tsvTsvMappingPathToUrl) then ("--tsv-mapping-path-to-url " +  '"' + tsvTsvMappingPathToUrl + '"') else ""} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp-dir " +  '"' + tmpTmpDir + '"') else ""} \
      ~{true="--use-gsutil-for-s3" false="" useUseGsUtilForS3} \
      ~{true="--no-checksum" false="" noNoChecksum} \
      ~{true="--debug" false="" debugDebug}
  >>>
}