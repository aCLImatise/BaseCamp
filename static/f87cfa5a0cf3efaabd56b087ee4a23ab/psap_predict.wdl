version 1.0

task PsapPredict {
  input {
    File? fast_a
    File? model
    Directory? out
    File? labels
  }
  command <<<
    psap predict \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/psap:1.0.6--pyhdfd78af_0"
  }
  parameter_meta {
    fast_a: "Path to peptide fasta file"
    model: "Path to RandomForest model in json format"
    out: "Output directory for psap prediction results"
    labels: ".txt file with llps uniprot ids (positive training\\nlabels)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}