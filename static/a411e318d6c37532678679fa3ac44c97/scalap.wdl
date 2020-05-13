version 1.0

task Scalap {
  input {
    Boolean privatePrivate
    Boolean verboseVerbose
    Boolean versionVersion
    File classpathClasspath
    File cpCp
  }
  command <<<
    scalap \
      ~{true="-private" false="" privatePrivate} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-version" false="" versionVersion} \
      ~{if defined(classpathClasspath) then ("-classpath " +  '"' + classpathClasspath + '"') else ""} \
      ~{if defined(cpCp) then ("-cp " +  '"' + cpCp + '"') else ""}
  >>>
}