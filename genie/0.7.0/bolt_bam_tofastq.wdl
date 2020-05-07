version 1.0

task BoltBamTofastq {
  input {
    String bamBam
    String excludedExcludedFlags
    String fqFq
    String fq2Fq2
    String requiredRequiredFlags
    String? genieGenie
    String? bamBam
    String? toToFastQ
    String? flagsFlags
  }
  command <<<
    bolt bam tofastq \
      ~{genieGenie} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(excludedExcludedFlags) then ("--excludedflags " +  '"' + excludedExcludedFlags + '"') else ""} \
      ~{if defined(fqFq) then ("--fq " +  '"' + fqFq + '"') else ""} \
      ~{if defined(fq2Fq2) then ("--fq2 " +  '"' + fq2Fq2 + '"') else ""} \
      ~{if defined(requiredRequiredFlags) then ("--requiredflags " +  '"' + requiredRequiredFlags + '"') else ""} \
      ~{bamBam} \
      ~{toToFastQ} \
      ~{flagsFlags}
  >>>
}