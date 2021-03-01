version 1.0

task PoppunkReferences {
  input {
    File? network
    String? distances
    String? ref_db
    Directory? model
    String? prefix_output_required
    Boolean? no_re_sketch
    Boolean? use_mash
    String? mash
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
      ~{if (no_re_sketch) then "--no-resketch" else ""} \
      ~{if (use_mash) then "--use-mash" else ""} \
      ~{if defined(mash) then ("--mash " +  '"' + mash + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    network: "gpickle file of network (required)"
    distances: "Prefix of input pickle of pre-calculated distances\\n(required)"
    ref_db: "Location of reference db, if resketching"
    model: "Directory containing model fit. Will be copied to new"
    prefix_output_required: "Prefix for output files (required)"
    no_re_sketch: "Do not resketch the references (--use-mash\\nonly)[default = False]"
    use_mash: "Use the old mash sketch backend [default = False]"
    mash: "Location of mash executable"
    threads: "Number of threads to use [default = 1]"
    directory: "--clusters CLUSTERS   Specify a different clustering (e.g. core/accessory)"
  }
  output {
    File out_stdout = stdout()
  }
}