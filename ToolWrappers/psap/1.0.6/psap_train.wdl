version 1.0

task PsapTrain {
  input {
    File? fast_a
    Directory? out
    File? labels
  }
  command <<<
    psap train \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/psap:1.0.6--pyhdfd78af_0"
  }
  parameter_meta {
    fast_a: "Path to peptide fasta file"
    out: "Output directory to store trained RandomForest\\nclassifier in json format"
    labels: ".txt file with llps uniprot ids (positive training\\nlabels)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}