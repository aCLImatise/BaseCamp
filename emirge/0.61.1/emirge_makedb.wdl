version 1.0

task EmirgeMakedb.py {
  input {
    Boolean gG
    String threadsThreads
    String tmpdirTmpdir
    String releaseRelease
    String minMinLen
    String maxMaxLen
    Float idId
    Boolean keepKeep
    File vVSearch
    File bowtieBowtieBuild
    Boolean silvaSilvaLicenseAccepted
    String? optionsOptions
  }
  command <<<
    emirge_makedb.py \
      ~{optionsOptions} \
      ~{true="-g" false="" gG} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(releaseRelease) then ("--release " +  '"' + releaseRelease + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(maxMaxLen) then ("--max-len " +  '"' + maxMaxLen + '"') else ""} \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{true="--keep" false="" keepKeep} \
      ~{if defined(vVSearch) then ("--vsearch " +  '"' + vVSearch + '"') else ""} \
      ~{if defined(bowtieBowtieBuild) then ("--bowtie-build " +  '"' + bowtieBowtieBuild + '"') else ""} \
      ~{true="--silva-license-accepted" false="" silvaSilvaLicenseAccepted}
  >>>
}