version 1.0

task HicFindRestSite {
  input {
    String fastFastA
    String searchSearchPattern
    String oO
  }
  command <<<
    hicFindRestSite \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(searchSearchPattern) then ("--searchPattern " +  '"' + searchSearchPattern + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}