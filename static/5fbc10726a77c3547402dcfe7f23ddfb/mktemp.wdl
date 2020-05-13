version 1.0

task Mktemp {
  input {
    Boolean directoryDirectory
    Boolean dryDryRun
    Boolean quietQuiet
    String suffixSuffix
    String tmpdirTmpdir
    Boolean tT
  }
  command <<<
    mktemp \
      ~{true="--directory" false="" directoryDirectory} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{true="-t" false="" tT}
  >>>
}