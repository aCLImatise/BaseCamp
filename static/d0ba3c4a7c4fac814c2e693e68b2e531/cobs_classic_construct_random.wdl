version 1.0

task CobsClassicconstructrandom {
  input {
    Boolean? document_size
    Boolean? num_documents
    Boolean? seed
    Boolean? signature_size
    File out_file
  }
  command <<<
    cobs classic_construct_random \
      ~{out_file} \
      ~{if (document_size) then "--document-size" else ""} \
      ~{if (num_documents) then "--num-documents" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (signature_size) then "--signature-size" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0"
  }
  parameter_meta {
    document_size: "number of random 31-mers in document, default: 1000000"
    num_documents: "number of random documents in index, default: 10000"
    seed: "random seed"
    signature_size: "number of bits of the signatures (vertical size),\\ndefault: 2 Mi\\n"
    out_file: "path to the output file"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}