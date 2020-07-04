version 1.0

task FindDuplicates {
  input {
    String? nuc_me_rpath
    String? reference
  }
  command <<<
    find_duplicates \
      ~{if defined(nuc_me_rpath) then ("--nucmerpath " +  '"' + nuc_me_rpath + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    nuc_me_rpath: "Path to the 'nucmer' executable."
    reference: "Path to the reference fasta file."
  }
}