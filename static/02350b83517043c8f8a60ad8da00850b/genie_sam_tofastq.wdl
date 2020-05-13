version 1.0

task GenieSamTofastq {
  input {
    String excludedExcludedFlags
    String fqFq
    String fq2Fq2
    String requiredRequiredFlags
    String samSam
    String? flagsFlags
  }
  command <<<
    genie sam tofastq \
      ~{flagsFlags} \
      ~{if defined(excludedExcludedFlags) then ("--excludedflags " +  '"' + excludedExcludedFlags + '"') else ""} \
      ~{if defined(fqFq) then ("--fq " +  '"' + fqFq + '"') else ""} \
      ~{if defined(fq2Fq2) then ("--fq2 " +  '"' + fq2Fq2 + '"') else ""} \
      ~{if defined(requiredRequiredFlags) then ("--requiredflags " +  '"' + requiredRequiredFlags + '"') else ""} \
      ~{if defined(samSam) then ("--sam " +  '"' + samSam + '"') else ""}
  >>>
}