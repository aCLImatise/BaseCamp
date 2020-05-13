version 1.0

task BpSeqconvert.pl {
  input {
    String fromFrom
    String toTo
    File? fileFileInFormat
    File? fileFileOutFormat
  }
  command <<<
    bp_seqconvert.pl \
      ~{fileFileInFormat} \
      ~{if defined(fromFrom) then ("--from " +  '"' + fromFrom + '"') else ""} \
      ~{if defined(toTo) then ("--to " +  '"' + toTo + '"') else ""} \
      ~{fileFileOutFormat}
  >>>
}