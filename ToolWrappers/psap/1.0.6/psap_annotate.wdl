version 1.0

task PsapAnnotate {
  input {
    File? fast_a
    File? labels
    Directory? out
  }
  command <<<
    psap annotate \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/psap:1.0.6--pyhdfd78af_0"
  }
  parameter_meta {
    fast_a: "Path to peptide fasta file"
    labels: ".txt file with llps uniprot ids (positive training\\nlabels)"
    out: "Output directory to store annotated data frame in .csv\\nformat\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}