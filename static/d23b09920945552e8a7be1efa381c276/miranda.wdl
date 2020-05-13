version 1.0

task Miranda {
  input {
    Boolean licenseLicense
    String scSc
    Boolean enEn
    String scaleScale
    Boolean strictStrict
    Boolean goGo
    Boolean geGe
    File outOut
    Boolean quietQuiet
    String trimTrim
    Boolean noNoEnergy
    File restrictRestrict
    Boolean keyvalKeyval
    File? fileFile1
    File? fileFile2
    String? optionsOptions
  }
  command <<<
    miranda \
      ~{fileFile1} \
      ~{true="--license" false="" licenseLicense} \
      ~{if defined(scSc) then ("-sc " +  '"' + scSc + '"') else ""} \
      ~{true="-en" false="" enEn} \
      ~{if defined(scaleScale) then ("-scale " +  '"' + scaleScale + '"') else ""} \
      ~{true="-strict" false="" strictStrict} \
      ~{true="-go" false="" goGo} \
      ~{true="-ge" false="" geGe} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{if defined(trimTrim) then ("-trim " +  '"' + trimTrim + '"') else ""} \
      ~{true="-noenergy" false="" noNoEnergy} \
      ~{if defined(restrictRestrict) then ("-restrict " +  '"' + restrictRestrict + '"') else ""} \
      ~{true="-keyval" false="" keyvalKeyval} \
      ~{fileFile2} \
      ~{optionsOptions}
  >>>
}