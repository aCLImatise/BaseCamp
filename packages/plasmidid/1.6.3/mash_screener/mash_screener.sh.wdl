version 1.0

task MashScreenersh {
  input {
    Int? directory_optionalo_output
  }
  command <<<
    mash_screener_sh \
      ~{if defined(directory_optionalo_output) then ("-i " +  '"' + directory_optionalo_output + '"') else ""}
  >>>
  parameter_meta {
    directory_optionalo_output: "directory (optional)\\n-o output directory (optional)\\n-d database to screen (.fasta)\\n-s sample name\\n-g group name (optional). If unset, samples will be gathered in NO_GROUP group\\n-1 reads corresponding to paired-end R1\\n-2 reads corresponding to paired-end R2\\n-f threshold identity value to retieve sequence ids with at least this value (default 0.9)\\n-w use winner takes it all\\n-T number of threads\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
  }
}