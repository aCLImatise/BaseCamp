version 1.0

task Exonerate2hints.pl {
  input {
    String priorityPriority
    String minMinIntronLen
    String maxMaxIntronLen
    String cdsCdsPartCutOff
    String sourceSource
  }
  command <<<
    exonerate2hints.pl \
      ~{if defined(priorityPriority) then ("--priority " +  '"' + priorityPriority + '"') else ""} \
      ~{if defined(minMinIntronLen) then ("--minintronlen " +  '"' + minMinIntronLen + '"') else ""} \
      ~{if defined(maxMaxIntronLen) then ("--maxintronlen " +  '"' + maxMaxIntronLen + '"') else ""} \
      ~{if defined(cdsCdsPartCutOff) then ("--CDSpart_cutoff " +  '"' + cdsCdsPartCutOff + '"') else ""} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""}
  >>>
}