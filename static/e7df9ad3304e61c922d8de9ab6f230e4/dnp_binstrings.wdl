version 1.0

task DnpBinstrings {
  input {
    Boolean versionVersionCheck
    String dinucleotideDinucleotide
  }
  command <<<
    dnp-binstrings \
      ~{if defined(versionVersionCheck) then ("--version-check " +  '"' + versionVersionCheck + '"') else ""} \
      ~{if defined(dinucleotideDinucleotide) then ("--dinucleotide " +  '"' + dinucleotideDinucleotide + '"') else ""}
  >>>
}