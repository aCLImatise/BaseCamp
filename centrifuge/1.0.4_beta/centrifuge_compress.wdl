version 1.0

task CentrifugeCompress.pl {
  input {
    String mapMap
    String oO
    Boolean noNoCompress
    Boolean tT
    Boolean maxgMaxg
    Boolean noNoDustMasker
    String? perlPerl
    String? centrifugeCentrifugeCompressPl
    File? pathPathToDownloadFiles
    File? pathPathToTaxNoNoMy
    String? 11
    String? 5000000050000000
  }
  command <<<
    centrifuge-compress.pl \
      ~{perlPerl} \
      ~{if defined(mapMap) then ("-map " +  '"' + mapMap + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-noCompress" false="" noNoCompress} \
      ~{true="-t" false="" tT} \
      ~{true="-maxG" false="" maxgMaxg} \
      ~{true="-noDustmasker" false="" noNoDustMasker} \
      ~{centrifugeCentrifugeCompressPl} \
      ~{pathPathToDownloadFiles} \
      ~{pathPathToTaxNoNoMy} \
      ~{11} \
      ~{5000000050000000}
  >>>
}