version 1.0

task Rfmix2tagore.py {
  input {
    String afrAfr
    String eurEur
    String natNat
    String unkUnk
    File outOut
    String? optionsOptions
  }
  command <<<
    rfmix2tagore.py \
      ~{optionsOptions} \
      ~{if defined(afrAfr) then ("--afr " +  '"' + afrAfr + '"') else ""} \
      ~{if defined(eurEur) then ("--eur " +  '"' + eurEur + '"') else ""} \
      ~{if defined(natNat) then ("--nat " +  '"' + natNat + '"') else ""} \
      ~{if defined(unkUnk) then ("--unk " +  '"' + unkUnk + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}