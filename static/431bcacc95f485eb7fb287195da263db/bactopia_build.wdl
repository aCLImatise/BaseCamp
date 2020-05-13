version 1.0

task BactopiaBuild.py {
  input {
    String extExt
    Boolean forceForce
    Boolean verboseVerbose
    Boolean silentSilent
    String? strStr
    String? strStr
  }
  command <<<
    bactopia-build.py \
      ~{strStr} \
      ~{if defined(extExt) then ("--ext " +  '"' + extExt + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--silent" false="" silentSilent} \
      ~{strStr}
  >>>
}