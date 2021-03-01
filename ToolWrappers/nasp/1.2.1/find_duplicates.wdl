version 1.0

task FindDuplicates {
  input {
    File? nuc_me_rpath
    File? reference
  }
  command <<<
    find_duplicates \
      ~{if defined(nuc_me_rpath) then ("--nucmerpath " +  '"' + nuc_me_rpath + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nuc_me_rpath: "Path to the 'nucmer' executable."
    reference: "Path to the reference fasta file.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}