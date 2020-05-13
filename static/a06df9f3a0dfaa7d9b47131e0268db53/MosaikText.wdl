version 1.0

task MosaikText {
  input {
    String fastFastQ
    Boolean screenScreen
    String axtAxt
    String bamBam
    String bedBed
    String elElAnd
    String refRef
    String samSam
    Boolean screenScreen
    Boolean uU
  }
  command <<<
    MosaikText \
      ~{if defined(fastFastQ) then ("-fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{true="-screen" false="" screenScreen} \
      ~{if defined(axtAxt) then ("-axt " +  '"' + axtAxt + '"') else ""} \
      ~{if defined(bamBam) then ("-bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(bedBed) then ("-bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(elElAnd) then ("-eland " +  '"' + elElAnd + '"') else ""} \
      ~{if defined(refRef) then ("-ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(samSam) then ("-sam " +  '"' + samSam + '"') else ""} \
      ~{true="-screen" false="" screenScreen} \
      ~{true="-u" false="" uU}
  >>>
}