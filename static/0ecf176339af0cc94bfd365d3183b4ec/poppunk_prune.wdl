version 1.0

task PoppunkPrune {
  input {
    File? remove
    String? distances
    String? ref_db
    String? prefix_output_required
    Boolean? re_sketch
    Boolean? use_mash
    String? mash
    Int? threads
  }
  command <<<
    poppunk_prune \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(ref_db) then ("--ref-db " +  '"' + ref_db + '"') else ""} \
      ~{if defined(prefix_output_required) then ("--output " +  '"' + prefix_output_required + '"') else ""} \
      ~{if (re_sketch) then "--resketch" else ""} \
      ~{if (use_mash) then "--use-mash" else ""} \
      ~{if defined(mash) then ("--mash " +  '"' + mash + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    remove: "File listing sequences to remove (required)"
    distances: "Prefix of input pickle of pre-calculated distances\\n(required)"
    ref_db: "Location of reference db, if resketching"
    prefix_output_required: "Prefix for output files (required)"
    re_sketch: "Resketch the non-excluded sequences (mash-only)\\n[default = False]"
    use_mash: "Use the old mash sketch backend [default = False]"
    mash: "Location of mash executable"
    threads: "Number of threads to use [default = 1]"
  }
  output {
    File out_stdout = stdout()
  }
}