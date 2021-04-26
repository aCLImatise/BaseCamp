version 1.0

task CooltoolsCallcompartments {
  input {
    File? reference_track
    Int? n_e_igs
    Boolean? verbose
    File? out_prefix
    Boolean? bigwig
    String track_name_dot
    String eigenvectors
  }
  command <<<
    cooltools call_compartments \
      ~{track_name_dot} \
      ~{eigenvectors} \
      ~{if defined(reference_track) then ("--reference-track " +  '"' + reference_track + '"') else ""} \
      ~{if defined(n_e_igs) then ("--n-eigs " +  '"' + n_e_igs + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if (bigwig) then "--bigwig" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0"
  }
  parameter_meta {
    reference_track: "Reference track for orienting and ranking"
    n_e_igs: "Number of eigenvectors to compute.  [default:\\n3]"
    verbose: "Enable verbose output"
    out_prefix: "Save compartment track as a BED-like file.\\n[required]"
    bigwig: "Also save compartment track as a bigWig file."
    track_name_dot: "Options:"
    eigenvectors: "--contact-type [cis|trans]    Type of the contacts perform eigen-value"
  }
  output {
    File out_stdout = stdout()
  }
}