version 1.0

task PredexAnnotation {
  input {
    Int? threads
    File? fast_a
    File? gtf
    Directory? output_directory_default
  }
  command <<<
    predex annotation \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/predex:0.9.3--pyh5e36f6f_0"
  }
  parameter_meta {
    threads: "Number of threads (default = 1)"
    fast_a: "Fasta file input"
    gtf: "GTF file input"
    output_directory_default: "Output directory (default = current)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}