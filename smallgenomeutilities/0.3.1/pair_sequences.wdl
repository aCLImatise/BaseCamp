version 1.0

task PairSequences {
  input {
    String? tsv_file_patientsampleclustertype
    String? msa_file_containing
    String? output_file_final
  }
  command <<<
    pair_sequences \
      ~{if defined(tsv_file_patientsampleclustertype) then ("-i " +  '"' + tsv_file_patientsampleclustertype + '"') else ""} \
      ~{if defined(msa_file_containing) then ("-s " +  '"' + msa_file_containing + '"') else ""} \
      ~{if defined(output_file_final) then ("-o " +  '"' + output_file_final + '"') else ""}
  >>>
  parameter_meta {
    tsv_file_patientsampleclustertype: "tsv file of patient/sample/cluster/type mapping"
    msa_file_containing: "MSA file containing the alignments between patient-sample sequences"
    output_file_final: "Output file for final pairs"
  }
}