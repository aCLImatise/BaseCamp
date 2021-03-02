version 1.0

task PredexAnnotation {
  input {
    Int? threads
    File? fast_a
    File? gtf
    Directory? output_directory
  }
  command <<<
    predex annotation \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/predex:0.9.2--pyh3252c3a_0"
  }
  parameter_meta {
    threads: "Number of threads (default = 1)"
    fast_a: "Fasta file input"
    gtf: "GTF file input"
    output_directory: "Output directory"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}