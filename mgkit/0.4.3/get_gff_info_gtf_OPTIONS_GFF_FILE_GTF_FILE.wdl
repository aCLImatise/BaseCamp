version 1.0

task GetGffInfoGtfOPTIONSGFFFILEGTFFILE {
  input {
    String geneGeneId
  }
  command <<<
    get-gff-info gtf OPTIONS GFF_FILE GTF_FILE \
      ~{if defined(geneGeneId) then ("--gene-id " +  '"' + geneGeneId + '"') else ""}
  >>>
}