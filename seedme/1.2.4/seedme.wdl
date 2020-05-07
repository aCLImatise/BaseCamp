version 1.0

task Seedme.py {
  input {
    String apiApiKey
    String authAuthPath
    String cacertCacert
    Boolean showShowCurlCommands
    Boolean showShowAuthInCurlCommands
    String connectConnectTimeout
    Boolean cpCp
    Boolean delDel
    String descriptionDescription
    Boolean dlDl
    Boolean dryDryRun
    String emailEmail
    String fileFileDescription
    Boolean fileFileDontTranscode
    Boolean fileFileOverwrite
    Boolean fpFp
    String fileFilePosterPath
    String fileFileTitle
    Boolean fileFileTranscode
    Boolean kvKv
    File logLogFile
    Boolean insecureInsecure
    Boolean notifyNotify
    Boolean overwriteOverwrite
    String postPost
    String privacyPrivacy
    Boolean qQ
    String listList
    String readReadTimeout
    String sequenceSequenceDescription
    Boolean sequenceSequenceEncode
    Boolean srSr
    Boolean sequenceSequenceOverwrite
    Boolean spSp
    String sequenceSequencePosterPath
    String sequenceSequenceTitle
    Boolean silentSilent
    String tagTag
    String taTa
    String tickerTicker
    String titleTitle
    String transferTransfer
    String updateUpdate
    String urlUrl
    String usernameUsername
    String verboseVerbose
    Boolean versionVersion
    Boolean eE
    Boolean tT
    Boolean dD
    Boolean kvKv
    Boolean tagTag
    Boolean ticTic
    Boolean spSp
    Boolean stSt
    Boolean fpFp
    Boolean ftFt
    Boolean stSt
    Boolean spSp
  }
  command <<<
    seedme.py \
      ~{if defined(apiApiKey) then ("-apikey " +  '"' + apiApiKey + '"') else ""} \
      ~{if defined(authAuthPath) then ("-auth_path " +  '"' + authAuthPath + '"') else ""} \
      ~{if defined(cacertCacert) then ("-cacert " +  '"' + cacertCacert + '"') else ""} \
      ~{true="-show_curl_commands" false="" showShowCurlCommands} \
      ~{true="-show_auth_in_curl_commands" false="" showShowAuthInCurlCommands} \
      ~{if defined(connectConnectTimeout) then ("-connect_timeout " +  '"' + connectConnectTimeout + '"') else ""} \
      ~{true="-cp" false="" cpCp} \
      ~{true="-del" false="" delDel} \
      ~{if defined(descriptionDescription) then ("-description " +  '"' + descriptionDescription + '"') else ""} \
      ~{true="-dl" false="" dlDl} \
      ~{true="-dry_run" false="" dryDryRun} \
      ~{if defined(emailEmail) then ("-email " +  '"' + emailEmail + '"') else ""} \
      ~{if defined(fileFileDescription) then ("-file_description " +  '"' + fileFileDescription + '"') else ""} \
      ~{true="-file_dont_transcode" false="" fileFileDontTranscode} \
      ~{true="-file_overwrite" false="" fileFileOverwrite} \
      ~{true="-fp" false="" fpFp} \
      ~{if defined(fileFilePosterPath) then ("-file_poster_path " +  '"' + fileFilePosterPath + '"') else ""} \
      ~{if defined(fileFileTitle) then ("-file_title " +  '"' + fileFileTitle + '"') else ""} \
      ~{true="-file_transcode" false="" fileFileTranscode} \
      ~{true="-kv" false="" kvKv} \
      ~{if defined(logLogFile) then ("-logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="-insecure" false="" insecureInsecure} \
      ~{true="-notify" false="" notifyNotify} \
      ~{true="-overwrite" false="" overwriteOverwrite} \
      ~{if defined(postPost) then ("-post " +  '"' + postPost + '"') else ""} \
      ~{if defined(privacyPrivacy) then ("-privacy " +  '"' + privacyPrivacy + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{if defined(listList) then ("-list " +  '"' + listList + '"') else ""} \
      ~{if defined(readReadTimeout) then ("-read_timeout " +  '"' + readReadTimeout + '"') else ""} \
      ~{if defined(sequenceSequenceDescription) then ("-sequence_description " +  '"' + sequenceSequenceDescription + '"') else ""} \
      ~{true="-sequence_encode" false="" sequenceSequenceEncode} \
      ~{true="-sr" false="" srSr} \
      ~{true="-sequence_overwrite" false="" sequenceSequenceOverwrite} \
      ~{true="-sp" false="" spSp} \
      ~{if defined(sequenceSequencePosterPath) then ("-sequence_poster_path " +  '"' + sequenceSequencePosterPath + '"') else ""} \
      ~{if defined(sequenceSequenceTitle) then ("-sequence_title " +  '"' + sequenceSequenceTitle + '"') else ""} \
      ~{true="-silent" false="" silentSilent} \
      ~{if defined(tagTag) then ("-tag " +  '"' + tagTag + '"') else ""} \
      ~{if defined(taTa) then ("-ta " +  '"' + taTa + '"') else ""} \
      ~{if defined(tickerTicker) then ("-ticker " +  '"' + tickerTicker + '"') else ""} \
      ~{if defined(titleTitle) then ("-title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(transferTransfer) then ("-transfer " +  '"' + transferTransfer + '"') else ""} \
      ~{if defined(updateUpdate) then ("-update " +  '"' + updateUpdate + '"') else ""} \
      ~{if defined(urlUrl) then ("-url " +  '"' + urlUrl + '"') else ""} \
      ~{if defined(usernameUsername) then ("-username " +  '"' + usernameUsername + '"') else ""} \
      ~{if defined(verboseVerbose) then ("-verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-e" false="" eE} \
      ~{true="-t" false="" tT} \
      ~{true="-d" false="" dD} \
      ~{true="-kv" false="" kvKv} \
      ~{true="-tag" false="" tagTag} \
      ~{true="-tic" false="" ticTic} \
      ~{true="-sp" false="" spSp} \
      ~{true="-st" false="" stSt} \
      ~{true="-fp" false="" fpFp} \
      ~{true="-ft" false="" ftFt} \
      ~{true="-st" false="" stSt} \
      ~{true="-sp" false="" spSp}
  >>>
}