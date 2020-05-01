version 1.0

task Rabix {
  input {
    String basedirBasedir
    String configurationConfigurationDir
    String cacheCacheDir
    Boolean noNoContainer
    String outdirOutdir
    Boolean quietQuiet
    Boolean resolveResolveApp
    String tesTesStorage
    String tesTesUrl
    String tmpTmpOutdirPrefix
    String tmpdirTmpdirPrefix
    Boolean verboseVerbose
  }
  command <<<
    rabix \
      ~{if defined(basedirBasedir) then ("--basedir " +  '"' + basedirBasedir + '"') else ""} \
      ~{if defined(configurationConfigurationDir) then ("--configuration-dir " +  '"' + configurationConfigurationDir + '"') else ""} \
      ~{if defined(cacheCacheDir) then ("--cache-dir " +  '"' + cacheCacheDir + '"') else ""} \
      ~{true="--no-container" false="" noNoContainer} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--resolve-app" false="" resolveResolveApp} \
      ~{if defined(tesTesStorage) then ("--tes-storage " +  '"' + tesTesStorage + '"') else ""} \
      ~{if defined(tesTesUrl) then ("--tes-url " +  '"' + tesTesUrl + '"') else ""} \
      ~{if defined(tmpTmpOutdirPrefix) then ("--tmp-outdir-prefix " +  '"' + tmpTmpOutdirPrefix + '"') else ""} \
      ~{if defined(tmpdirTmpdirPrefix) then ("--tmpdir-prefix " +  '"' + tmpdirTmpdirPrefix + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}