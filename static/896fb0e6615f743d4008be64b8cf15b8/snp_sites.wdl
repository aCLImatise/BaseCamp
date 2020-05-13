version 1.0

task SnpSites {
  input {
    Boolean rmvRmvPcBhv
    String oO
    File? fileFile
  }
  command <<<
    snp-sites \
      ~{fileFile} \
      ~{true="-rmvpcbhV" false="" rmvRmvPcBhv} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}