version 1.0

task CalculateSeqlensh {
  input {
    Int? output_directory_optional
  }
  command <<<
    calculate_seqlen_sh \
      ~{if defined(output_directory_optional) then ("-i " +  '"' + output_directory_optional + '"') else ""}
  >>>
  parameter_meta {
    output_directory_optional: "file\\n-o output directory (optional). By default the file is replaced in the same location\\n-n file name (optional). By default is the same name with .length extension\\n-r remove \\\">\\\" (greater-than) symbol from fasta header\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
  }
}