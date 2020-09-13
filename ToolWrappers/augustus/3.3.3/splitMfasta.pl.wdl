version 1.0

task SplitMfastapl {
  input {
    File? minsize
    Array[Int] output_path
  }
  command <<<
    splitMfasta_pl \
      ~{if defined(minsize) then ("--minsize " +  '"' + minsize + '"') else ""} \
      ~{if defined(output_path) then ("--outputpath " +  '"' + output_path + '"') else ""}
  >>>
  parameter_meta {
    minsize: "each split output fasta file total to at least this man base pairs.\\nset this to 0 to split the input in single sequence files."
    output_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}