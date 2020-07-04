version 1.0

task PeptideMapper {
  input {
    String peptide_file
    String protein_database
  }
  command <<<
    PeptideMapper \
      ~{peptide_file} \
      ~{protein_database}
  >>>
  parameter_meta {
    peptide_file: ""
    protein_database: ""
  }
}