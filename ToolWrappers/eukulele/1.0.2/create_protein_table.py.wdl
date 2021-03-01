version 1.0

task CreateProteinTablepy {
  input {
    Array[File] in_file_peptide
  }
  command <<<
    create_protein_table_py \
      ~{if defined(in_file_peptide) then ("--infile_peptide " +  '"' + in_file_peptide + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/eukulele:1.0.2--pyhcb32578_1"
  }
  parameter_meta {
    in_file_peptide: ""
  }
  output {
    File out_stdout = stdout()
  }
}