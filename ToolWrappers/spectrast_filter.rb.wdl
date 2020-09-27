version 1.0

task SpectrastFilterrb {
  input {
    File? explicitly_named_output
    Boolean? binary_output
    String? predicate
    File? merge
    String? replicates
    Int file_one_dots_plib
  }
  command <<<
    spectrast_filter_rb \
      ~{file_one_dots_plib} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if (binary_output) then "--binary-output" else ""} \
      ~{if defined(predicate) then ("--predicate " +  '"' + predicate + '"') else ""} \
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{if defined(replicates) then ("--replicates " +  '"' + replicates + '"') else ""}
  >>>
  parameter_meta {
    explicitly_named_output: "An explicitly named output file."
    binary_output: "Produce spectral libraries in binary format rather than ASCII [false]"
    predicate: "Keep only spectra satifying predicate pred. Should be a C-style predicate"
    merge: "How to combine multiple splib files (if provided). Options are U,S,H\\nU: Union. Include all the peptide ions in all the files.\\nS: Subtraction. Only include peptide ions in the first file\\nthat are not present in any of the other files.\\nH: Subtraction of homologs. Only include peptide ions in the\\nfirst file that do not have any homologs with\\nsame charge and similar m/z in any of the other files.\\nA: Appending. Each peptide ion is added from only one library:\\nthe first file in the argument list that contains that peptide ion.\\nUseful for keeping existing consensus spectra unchanged while adding\\nonly previously unseen peptide ions. [U]"
    replicates: "How to derive a single spectrum from replicates. Options are None, C,B\\nC: Consensus. Create the consensus spectrum of all replicate spectra of each peptide ion.\\nB: Best replicate. Pick the best replicate of each peptide ion. [None]\\n"
    file_one_dots_plib: ""
  }
  output {
    File out_stdout = stdout()
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}