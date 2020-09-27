version 1.0

task SamToGff3py {
  input {
    String? input_fast_a
    Int? source
    String sam_filename
  }
  command <<<
    sam_to_gff3_py \
      ~{sam_filename} \
      ~{if defined(input_fast_a) then ("--input_fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""}
  >>>
  parameter_meta {
    input_fast_a: "(Optional) input fasta. If given, coverage will be\\ncalculated."
    source: "source name (ex: hg38, mm10)\\n"
    sam_filename: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}