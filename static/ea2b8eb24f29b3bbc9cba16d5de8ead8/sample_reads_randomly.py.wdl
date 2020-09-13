version 1.0

task Samplereadsrandomlypy {
  input {
    Boolean? info
    Int? num_reads
    Int? max_reads
    Int? samples
    String? random_seed
    Boolean? force_single
    File? var_output
    File? force
    Boolean? gzip
    Boolean? bzip
    String filenames
  }
  command <<<
    sample_reads_randomly_py \
      ~{filenames} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(num_reads) then ("--num_reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(max_reads) then ("--max_reads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if (force_single) then "--force_single" else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip) then "--bzip" else ""}
  >>>
  parameter_meta {
    info: "print citation information"
    num_reads: "samples the number of sequences or pairs specified\\nwith -N (default: 100000)"
    max_reads: ""
    samples: ""
    random_seed: "Provide a random seed for the generator (default:\\nNone)"
    force_single: "Ignore read pair information if present (default:\\nFalse)"
    var_output: ""
    force: "Overwrite output file if it exits (default: False)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    filenames: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}