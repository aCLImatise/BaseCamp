version 1.0

task Uclust {
  input {
    String splitSplit
    String tmpdirTmpdir
    String typesTypes
    Boolean userUserSort
    String maxlenMaxlen
    String minMinLen
    Boolean aminoAmino
    Boolean nucleoNucleo
    String bumpBump
    String stepStepWords
    Boolean revRev
    Boolean libLibOnly
    Boolean selfSelf
    String idIdPrefix
    Boolean exactExact
    Boolean optimalOptimal
    String hspHsp
    String hspHspScore
    String kK
    String bandBand
    Boolean checkCheckFast
    Boolean quietQuiet
  }
  command <<<
    uclust \
      ~{if defined(splitSplit) then ("--split " +  '"' + splitSplit + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(typesTypes) then ("--types " +  '"' + typesTypes + '"') else ""} \
      ~{true="--usersort" false="" userUserSort} \
      ~{if defined(maxlenMaxlen) then ("--maxlen " +  '"' + maxlenMaxlen + '"') else ""} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--nucleo" false="" nucleoNucleo} \
      ~{if defined(bumpBump) then ("--bump " +  '"' + bumpBump + '"') else ""} \
      ~{if defined(stepStepWords) then ("--stepwords " +  '"' + stepStepWords + '"') else ""} \
      ~{true="--rev" false="" revRev} \
      ~{true="--libonly" false="" libLibOnly} \
      ~{true="--self" false="" selfSelf} \
      ~{if defined(idIdPrefix) then ("--idprefix " +  '"' + idIdPrefix + '"') else ""} \
      ~{true="--exact" false="" exactExact} \
      ~{true="--optimal" false="" optimalOptimal} \
      ~{if defined(hspHsp) then ("--hsp " +  '"' + hspHsp + '"') else ""} \
      ~{if defined(hspHspScore) then ("--hspscore " +  '"' + hspHspScore + '"') else ""} \
      ~{if defined(kK) then ("--k " +  '"' + kK + '"') else ""} \
      ~{if defined(bandBand) then ("--band " +  '"' + bandBand + '"') else ""} \
      ~{true="--check_fast" false="" checkCheckFast} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}