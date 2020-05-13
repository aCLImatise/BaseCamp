version 1.0

task Readal {
  input {
    String inIn
    String outOut
    Boolean formatFormat
    Boolean typeType
    Boolean infoInfo
    Boolean onlyOnlySeqs
    Boolean htmlHtml
    Boolean reverseReverse
    Boolean nbrNbrF
    Boolean megaMega
    Boolean nexusNexus
    Boolean clustalClustal
    Boolean fastFastA
    Boolean fastFastAM10
    Boolean phylipPhylip
    Boolean phylipPhylipM10
    Boolean phylipPhylipPaml
    Boolean phylipPhylipPamlM10
    Boolean phylip3Phylip3
    Boolean phylip3Phylip3
  }
  command <<<
    readal \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-format" false="" formatFormat} \
      ~{true="-type" false="" typeType} \
      ~{true="-info" false="" infoInfo} \
      ~{true="-onlyseqs" false="" onlyOnlySeqs} \
      ~{true="-html" false="" htmlHtml} \
      ~{true="-reverse" false="" reverseReverse} \
      ~{true="-nbrf" false="" nbrNbrF} \
      ~{true="-mega" false="" megaMega} \
      ~{true="-nexus" false="" nexusNexus} \
      ~{true="-clustal" false="" clustalClustal} \
      ~{true="-fasta" false="" fastFastA} \
      ~{true="-fasta_m10" false="" fastFastAM10} \
      ~{true="-phylip" false="" phylipPhylip} \
      ~{true="-phylip_m10" false="" phylipPhylipM10} \
      ~{true="-phylip_paml" false="" phylipPhylipPaml} \
      ~{true="-phylip_paml_m10" false="" phylipPhylipPamlM10} \
      ~{true="-phylip3" false="" phylip3Phylip3} \
      ~{true="-phylip3" false="" phylip3Phylip3}
  >>>
}