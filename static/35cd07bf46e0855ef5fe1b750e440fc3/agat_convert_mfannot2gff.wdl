version 1.0

task AgatConvertMfannot2gff.pl {
  input {
    String mMFanNot
    String gffGff
    String aA
    String asAs
    String theThe
    String aA
    String anAn
    String? gaasGaasConvertMfannot2gffpl
  }
  command <<<
    agat_convert_mfannot2gff.pl \
      ~{gaasGaasConvertMfannot2gffpl} \
      ~{if defined(mMFanNot) then ("--mfannot " +  '"' + mMFanNot + '"') else ""} \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}