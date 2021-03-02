version 1.0

task PoreCContactsDownsample {
  input {
    Int? random_seed
    Boolean? warn
    Int? max_attempts
    String dest_contact_table_prefix
  }
  command <<<
    pore_c contacts downsample \
      ~{dest_contact_table_prefix} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if (warn) then "--warn" else ""} \
      ~{if defined(max_attempts) then ("--max-attempts " +  '"' + max_attempts + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    random_seed: "Check if the difference between the sampled\\namout and the target amount is greater than\\nthis proportion"
    warn: "If the a sample fails the --tol check print a\\nwarning rather than exiting"
    max_attempts: "The number of times to try and find a set of\\nsubsamples all within --tol"
    dest_contact_table_prefix: "[DOWNSAMPLE_INCREMENTS]..."
  }
  output {
    File out_stdout = stdout()
  }
}