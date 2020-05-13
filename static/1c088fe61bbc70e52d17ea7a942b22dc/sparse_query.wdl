version 1.0

task SparseQuery {
  input {
    String dbnameDbname
    String seqSeqList
    String defaultDefault
    Int minMin
    Int maxMax
    String groupGroup
    String tagTag
    String indexIndex
    String barcodeBarcode
    String assemblyAssemblyAccession
    String refseqRefseqCategory
    String assemblyAssemblyLevel
    String taxidTaxid
    String organismOrganismName
    String speciesSpecies
    String genusGenus
    String familyFamily
    String orderOrder
    String classClass
    String phylumPhylum
    String kingdomKingdom
    String superkingdomSuperkingdom
  }
  command <<<
    sparse query \
      ~{if defined(dbnameDbname) then ("--dbname " +  '"' + dbnameDbname + '"') else ""} \
      ~{if defined(seqSeqList) then ("--seqlist " +  '"' + seqSeqList + '"') else ""} \
      ~{if defined(defaultDefault) then ("--default " +  '"' + defaultDefault + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(tagTag) then ("--tag " +  '"' + tagTag + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(barcodeBarcode) then ("--barcode " +  '"' + barcodeBarcode + '"') else ""} \
      ~{if defined(assemblyAssemblyAccession) then ("--assembly_accession " +  '"' + assemblyAssemblyAccession + '"') else ""} \
      ~{if defined(refseqRefseqCategory) then ("--refseq_category " +  '"' + refseqRefseqCategory + '"') else ""} \
      ~{if defined(assemblyAssemblyLevel) then ("--assembly_level " +  '"' + assemblyAssemblyLevel + '"') else ""} \
      ~{if defined(taxidTaxid) then ("--taxid " +  '"' + taxidTaxid + '"') else ""} \
      ~{if defined(organismOrganismName) then ("--organism_name " +  '"' + organismOrganismName + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(genusGenus) then ("--genus " +  '"' + genusGenus + '"') else ""} \
      ~{if defined(familyFamily) then ("--family " +  '"' + familyFamily + '"') else ""} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{if defined(classClass) then ("--class " +  '"' + classClass + '"') else ""} \
      ~{if defined(phylumPhylum) then ("--phylum " +  '"' + phylumPhylum + '"') else ""} \
      ~{if defined(kingdomKingdom) then ("--kingdom " +  '"' + kingdomKingdom + '"') else ""} \
      ~{if defined(superkingdomSuperkingdom) then ("--superkingdom " +  '"' + superkingdomSuperkingdom + '"') else ""}
  >>>
}