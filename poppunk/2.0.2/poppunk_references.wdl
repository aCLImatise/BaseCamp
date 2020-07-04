version 1.0

task PoppunkReferences {
  input {
    String? network
    String? distances
    String? ref_db
    String? model
    String? clusters
    String? prefix_output_files
    Boolean? no_re_sketch
    Boolean? use_mash
    String? mash
    String? threads
  }
  command <<<
    poppunk_references \
      ~{if defined(network) then ("--network " +  '"' + network + '"') else ""} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(ref_db) then ("--ref-db " +  '"' + ref_db + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(prefix_output_files) then ("--output " +  '"' + prefix_output_files + '"') else ""} \
      ~{true="--no-resketch" false="" no_re_sketch} \
      ~{true="--use-mash" false="" use_mash} \
      ~{if defined(mash) then ("--mash " +  '"' + mash + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    network: "gpickle file of network (required)"
    distances: "Prefix of input pickle of pre-calculated distances (required)"
    ref_db: "Location of reference db, if resketching"
    model: "Directory containing model fit. Will be copied to new directory"
    clusters: "Specify a different clustering (e.g. core/accessory) to copy to new directory"
    prefix_output_files: "Prefix for output files (required)"
    no_re_sketch: "Do not resketch the references (--use-mash only)[default = False]"
    use_mash: "Use the old mash sketch backend [default = False]"
    mash: "Location of mash executable"
    threads: "Number of threads to use [default = 1]"
  }
}