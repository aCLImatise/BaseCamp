version 1.0

task ScelvisRun {
  input {
    Boolean debugDebug
    String hostHost
    String portPort
    Boolean fakeFakeData
    String dataDataSource
    String publicPublicUrlPrefix
    String cacheCacheDir
    String cacheCacheRedIsUrl
    String cacheCacheDefaultTimeout
    Boolean cacheCachePreloadData
    String uploadUploadDir
    Int maxMaxUploadDataSize
    Boolean disableDisableUpload
    Boolean disableDisableConversion
    String customCustomHomeMd
    String customCustomStaticFolder
    String iIRodsClientServerNegotiation
    String iIRodsClientServerPolicy
    String iIRodsSslVerifyServer
    String iIRodsEncryptionAlgorithm
    String iIRodsEncryptionKeySize
    String iIRodsEncryptionNumHashRounds
    String iIRodsEncryptionSaltSize
  }
  command <<<
    scelvis run \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(hostHost) then ("--host " +  '"' + hostHost + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{true="--fake-data" false="" fakeFakeData} \
      ~{if defined(dataDataSource) then ("--data-source " +  '"' + dataDataSource + '"') else ""} \
      ~{if defined(publicPublicUrlPrefix) then ("--public-url-prefix " +  '"' + publicPublicUrlPrefix + '"') else ""} \
      ~{if defined(cacheCacheDir) then ("--cache-dir " +  '"' + cacheCacheDir + '"') else ""} \
      ~{if defined(cacheCacheRedIsUrl) then ("--cache-redis-url " +  '"' + cacheCacheRedIsUrl + '"') else ""} \
      ~{if defined(cacheCacheDefaultTimeout) then ("--cache-default-timeout " +  '"' + cacheCacheDefaultTimeout + '"') else ""} \
      ~{true="--cache-preload-data" false="" cacheCachePreloadData} \
      ~{if defined(uploadUploadDir) then ("--upload-dir " +  '"' + uploadUploadDir + '"') else ""} \
      ~{if defined(maxMaxUploadDataSize) then ("--max-upload-data-size " +  '"' + maxMaxUploadDataSize + '"') else ""} \
      ~{true="--disable-upload" false="" disableDisableUpload} \
      ~{true="--disable-conversion" false="" disableDisableConversion} \
      ~{if defined(customCustomHomeMd) then ("--custom-home-md " +  '"' + customCustomHomeMd + '"') else ""} \
      ~{if defined(customCustomStaticFolder) then ("--custom-static-folder " +  '"' + customCustomStaticFolder + '"') else ""} \
      ~{if defined(iIRodsClientServerNegotiation) then ("--irods-client-server-negotiation " +  '"' + iIRodsClientServerNegotiation + '"') else ""} \
      ~{if defined(iIRodsClientServerPolicy) then ("--irods-client-server-policy " +  '"' + iIRodsClientServerPolicy + '"') else ""} \
      ~{if defined(iIRodsSslVerifyServer) then ("--irods-ssl-verify-server " +  '"' + iIRodsSslVerifyServer + '"') else ""} \
      ~{if defined(iIRodsEncryptionAlgorithm) then ("--irods-encryption-algorithm " +  '"' + iIRodsEncryptionAlgorithm + '"') else ""} \
      ~{if defined(iIRodsEncryptionKeySize) then ("--irods-encryption-key-size " +  '"' + iIRodsEncryptionKeySize + '"') else ""} \
      ~{if defined(iIRodsEncryptionNumHashRounds) then ("--irods-encryption-num-hash-rounds " +  '"' + iIRodsEncryptionNumHashRounds + '"') else ""} \
      ~{if defined(iIRodsEncryptionSaltSize) then ("--irods-encryption-salt-size " +  '"' + iIRodsEncryptionSaltSize + '"') else ""}
  >>>
}