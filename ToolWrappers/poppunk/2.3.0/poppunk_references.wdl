version 1.0

task PoppunkReferences {
  input {
    File? network
    String? distances
    String? ref_db
    Directory? model
    String? prefix_output_required
    Int? threads
    Directory directory
  }
  command <<<
    poppunk_references \
      ~{directory} \
      ~{if defined(network) then ("--network " +  '"' + network + '"') else ""} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(ref_db) then ("--ref-db " +  '"' + ref_db + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(prefix_output_required) then ("--output " +  '"' + prefix_output_required + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/poppunk:2.3.0--py_0"
  }
  parameter_meta {
    network: "gpickle file of network (required)"
    distances: "Prefix of input pickle of pre-calculated distances\\n(required)"
    ref_db: "Location of reference db, if resketching"
    model: "Directory containing model fit. Will be copied to new"
    prefix_output_required: "Prefix for output files (required)"
    threads: "Number of threads to use [default = 1]"
    directory: "--clusters CLUSTERS   Specify a different clustering (e.g. core/accessory)"
  }
  output {
    File out_stdout = stdout()
  }
}