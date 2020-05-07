version 1.0

task FillRefMd5 {
  input {
    File dictionaryDictionary
    Boolean infoInfo
    File refseqRefseq
    String? optionsOptions
    String? inInVcfGz
    String? outOutVcfGz
  }
  command <<<
    fill-ref-md5 \
      ~{optionsOptions} \
      ~{if defined(dictionaryDictionary) then ("--dictionary " +  '"' + dictionaryDictionary + '"') else ""} \
      ~{true="--info" false="" infoInfo} \
      ~{if defined(refseqRefseq) then ("--refseq " +  '"' + refseqRefseq + '"') else ""} \
      ~{inInVcfGz} \
      ~{outOutVcfGz}
  >>>
}