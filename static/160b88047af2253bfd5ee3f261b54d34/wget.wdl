version 1.0

task Wget {
  input {
    Boolean vV
    Boolean bB
    Boolean eE
    Boolean oO
    Boolean aA
    Boolean dD
    Boolean qQ
    Boolean vV
    Boolean noNoVerbose
    String reportReportSpeed
    Boolean iI
    Boolean fF
    Boolean bB
    String bindBindAddress
    String limitLimitRate
    Boolean noNoDnsCache
    String restrictRestrictFileNames
    Boolean ignoreIgnoreCase
    String preferPreferFamily
    String userUser
    String passwordPassword
    Boolean askAskPassword
    Boolean noNoIri
    String localLocalEncoding
    String remoteRemoteEncoding
    Boolean unlinkUnlink
    Boolean noNoDirectories
    Boolean xX
    Boolean noNoHostDirectories
    Boolean protocolProtocolDirectories
    Boolean pP
    Boolean eE
    Boolean uU
    String secureSecureProtocol
    Boolean httpsHttpsOnly
    Boolean noNoCheckCertificate
    File certificateCertificate
    String certificateCertificateType
    File privatePrivateKey
    String privatePrivateKeyType
    File caCaCertificate
    String caCaDirectory
    File crlCrlFile
    File pinnedPinnedPubkey
    File randomRandomFile
    File egdEgdFile
    Boolean noNoHSts
    Boolean hHStsFile
    String ftpFtpUser
    String ftpFtpPassword
    Boolean noNoRemoveListing
    Boolean noNoGlob
    Boolean noNoPassiveFtp
    Boolean preservePreservePermissions
    Boolean retrRetrSymlinks
    Boolean ftpsFtpsImplicit
    Boolean ftpsFtpsResumeSsl
    Boolean ftpsFtpsClearDataConnection
    Boolean ftpsFtpsFallBackToFtp
    File warWarCFile
    String warWarCHeader
    String warWarCMaxSize
    Boolean warWarCCdx
    File warWarCDedUp
    Boolean noNoWarCCompression
    Boolean noNoWarCDigests
    Boolean noNoWarCKeepLog
    Directory warWarCTempdir
    Boolean rR
    Boolean lL
    Boolean kK
    Boolean kK
    Boolean mM
    Boolean pP
    Boolean aA
    Boolean rR
    Boolean dD
    Boolean hH
    Boolean lL
    Boolean iI
    Boolean xX
    Boolean noNoParent
  }
  command <<<
    wget \
      ~{true="-V" false="" vV} \
      ~{true="-b" false="" bB} \
      ~{true="-e" false="" eE} \
      ~{true="-o" false="" oO} \
      ~{true="-a" false="" aA} \
      ~{true="-d" false="" dD} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="--no-verbose" false="" noNoVerbose} \
      ~{if defined(reportReportSpeed) then ("--report-speed " +  '"' + reportReportSpeed + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-F" false="" fF} \
      ~{true="-B" false="" bB} \
      ~{if defined(bindBindAddress) then ("--bind-address " +  '"' + bindBindAddress + '"') else ""} \
      ~{if defined(limitLimitRate) then ("--limit-rate " +  '"' + limitLimitRate + '"') else ""} \
      ~{true="--no-dns-cache" false="" noNoDnsCache} \
      ~{if defined(restrictRestrictFileNames) then ("--restrict-file-names " +  '"' + restrictRestrictFileNames + '"') else ""} \
      ~{true="--ignore-case" false="" ignoreIgnoreCase} \
      ~{if defined(preferPreferFamily) then ("--prefer-family " +  '"' + preferPreferFamily + '"') else ""} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{true="--ask-password" false="" askAskPassword} \
      ~{true="--no-iri" false="" noNoIri} \
      ~{if defined(localLocalEncoding) then ("--local-encoding " +  '"' + localLocalEncoding + '"') else ""} \
      ~{if defined(remoteRemoteEncoding) then ("--remote-encoding " +  '"' + remoteRemoteEncoding + '"') else ""} \
      ~{true="--unlink" false="" unlinkUnlink} \
      ~{true="--no-directories" false="" noNoDirectories} \
      ~{true="-x" false="" xX} \
      ~{true="--no-host-directories" false="" noNoHostDirectories} \
      ~{true="--protocol-directories" false="" protocolProtocolDirectories} \
      ~{true="-P" false="" pP} \
      ~{true="-E" false="" eE} \
      ~{true="-U" false="" uU} \
      ~{if defined(secureSecureProtocol) then ("--secure-protocol " +  '"' + secureSecureProtocol + '"') else ""} \
      ~{true="--https-only" false="" httpsHttpsOnly} \
      ~{true="--no-check-certificate" false="" noNoCheckCertificate} \
      ~{if defined(certificateCertificate) then ("--certificate " +  '"' + certificateCertificate + '"') else ""} \
      ~{if defined(certificateCertificateType) then ("--certificate-type " +  '"' + certificateCertificateType + '"') else ""} \
      ~{if defined(privatePrivateKey) then ("--private-key " +  '"' + privatePrivateKey + '"') else ""} \
      ~{if defined(privatePrivateKeyType) then ("--private-key-type " +  '"' + privatePrivateKeyType + '"') else ""} \
      ~{if defined(caCaCertificate) then ("--ca-certificate " +  '"' + caCaCertificate + '"') else ""} \
      ~{if defined(caCaDirectory) then ("--ca-directory " +  '"' + caCaDirectory + '"') else ""} \
      ~{if defined(crlCrlFile) then ("--crl-file " +  '"' + crlCrlFile + '"') else ""} \
      ~{if defined(pinnedPinnedPubkey) then ("--pinnedpubkey " +  '"' + pinnedPinnedPubkey + '"') else ""} \
      ~{if defined(randomRandomFile) then ("--random-file " +  '"' + randomRandomFile + '"') else ""} \
      ~{if defined(egdEgdFile) then ("--egd-file " +  '"' + egdEgdFile + '"') else ""} \
      ~{true="--no-hsts" false="" noNoHSts} \
      ~{true="--hsts-file" false="" hHStsFile} \
      ~{if defined(ftpFtpUser) then ("--ftp-user " +  '"' + ftpFtpUser + '"') else ""} \
      ~{if defined(ftpFtpPassword) then ("--ftp-password " +  '"' + ftpFtpPassword + '"') else ""} \
      ~{true="--no-remove-listing" false="" noNoRemoveListing} \
      ~{true="--no-glob" false="" noNoGlob} \
      ~{true="--no-passive-ftp" false="" noNoPassiveFtp} \
      ~{true="--preserve-permissions" false="" preservePreservePermissions} \
      ~{true="--retr-symlinks" false="" retrRetrSymlinks} \
      ~{true="--ftps-implicit" false="" ftpsFtpsImplicit} \
      ~{true="--ftps-resume-ssl" false="" ftpsFtpsResumeSsl} \
      ~{true="--ftps-clear-data-connection" false="" ftpsFtpsClearDataConnection} \
      ~{true="--ftps-fallback-to-ftp" false="" ftpsFtpsFallBackToFtp} \
      ~{if defined(warWarCFile) then ("--warc-file " +  '"' + warWarCFile + '"') else ""} \
      ~{if defined(warWarCHeader) then ("--warc-header " +  '"' + warWarCHeader + '"') else ""} \
      ~{if defined(warWarCMaxSize) then ("--warc-max-size " +  '"' + warWarCMaxSize + '"') else ""} \
      ~{true="--warc-cdx" false="" warWarCCdx} \
      ~{if defined(warWarCDedUp) then ("--warc-dedup " +  '"' + warWarCDedUp + '"') else ""} \
      ~{true="--no-warc-compression" false="" noNoWarCCompression} \
      ~{true="--no-warc-digests" false="" noNoWarCDigests} \
      ~{true="--no-warc-keep-log" false="" noNoWarCKeepLog} \
      ~{if defined(warWarCTempdir) then ("--warc-tempdir " +  '"' + warWarCTempdir + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-l" false="" lL} \
      ~{true="-k" false="" kK} \
      ~{true="-K" false="" kK} \
      ~{true="-m" false="" mM} \
      ~{true="-p" false="" pP} \
      ~{true="-A" false="" aA} \
      ~{true="-R" false="" rR} \
      ~{true="-D" false="" dD} \
      ~{true="-H" false="" hH} \
      ~{true="-L" false="" lL} \
      ~{true="-I" false="" iI} \
      ~{true="-X" false="" xX} \
      ~{true="--no-parent" false="" noNoParent}
  >>>
}