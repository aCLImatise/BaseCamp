version 1.0

task PairSequences {
  input {
    File? tsv_file_patientsampleclustertype
    File? msa_file_containing
    String? o
    String sequences
  }
  command <<<
    pair_sequences \
      ~{sequences} \
      ~{if defined(tsv_file_patientsampleclustertype) then ("-i " +  '"' + tsv_file_patientsampleclustertype + '"') else ""} \
      ~{if defined(msa_file_containing) then ("-s " +  '"' + msa_file_containing + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    tsv_file_patientsampleclustertype: "tsv file of patient/sample/cluster/type mapping"
    msa_file_containing: "MSA file containing the alignments between patient-sample"
    o: ""
    sequences: "-o pairs     Output file for final pairs"
  }
  output {
    File out_stdout = stdout()
  }
}