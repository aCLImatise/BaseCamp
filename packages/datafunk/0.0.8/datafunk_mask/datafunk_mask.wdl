version 1.0

task DatafunkMask {
  input {
    File? input_fast_a
    File? output_fast_a
    Boolean? masktxt__maskfile
  }
  command <<<
    datafunk mask \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if (masktxt__maskfile) then "-m" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    input_fast_a: "Fasta file to mask"
    output_fast_a: "Fasta file to write"
    masktxt__maskfile: ", mask.txt, --mask-file mask.txt\\nFile with mask instructions to parse\\n"
  }
  output {
    File out_stdout = stdout()
  }
}