version 1.0

task VIBRANTAnnotation.py {
  input {
    String iI
    String fF
    String lL
    String oO
    Boolean viViRome
    String dD
    String mM
    String xX
    String yY
  }
  command <<<
    VIBRANT_annotation.py \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-virome" false="" viViRome} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""}
  >>>
}