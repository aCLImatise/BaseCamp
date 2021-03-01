version 1.0

task SamToGff3py {
  input {
    String? input_fast_a
    Int? source_name_ex
    String samfilename
    String sam_filename
  }
  command <<<
    sam_to_gff3_py \
      ~{samfilename} \
      ~{sam_filename} \
      ~{if defined(input_fast_a) then ("--input_fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(source_name_ex) then ("--source " +  '"' + source_name_ex + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fast_a: "(Optional) input fasta. If given, coverage will be\\ncalculated."
    source_name_ex: "source name (ex: hg38, mm10)\\n"
    samfilename: "sam_filename"
    sam_filename: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}