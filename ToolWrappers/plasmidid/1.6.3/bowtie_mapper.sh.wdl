version 1.0

task BowtieMappersh {
  input {
    Int? directory_optionalo_output
  }
  command <<<
    bowtie_mapper_sh \
      ~{if defined(directory_optionalo_output) then ("-i " +  '"' + directory_optionalo_output + '"') else ""}
  >>>
  parameter_meta {
    directory_optionalo_output: "directory (optional)\\n-o output directory (optional)\\n-d database to map (.fasta)\\n-s sample name\\n-g group name (optional). If unset, samples will be gathered in NO_GROUP group\\n-1 reads corresponding to paired-end R1\\n-2 reads corresponding to paired-end R2\\n-f offrate index for bowtie_build (optional). Default value 1. for quicker indexing use higher number\\n-a use -a mapping (off by default)\\n-T number of threads\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
  }
}