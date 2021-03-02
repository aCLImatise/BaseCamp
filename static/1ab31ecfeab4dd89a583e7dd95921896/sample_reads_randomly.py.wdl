version 1.0

task Samplereadsrandomlypy {
  input {
    Boolean? info
    Int? num_reads
    Int? random_seed
    Boolean? force_single
    File? overwrite_output_file
    Boolean? gzip
    Boolean? bzip
    String filenames
  }
  command <<<
    sample_reads_randomly_py \
      ~{filenames} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(num_reads) then ("--num_reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if (force_single) then "--force_single" else ""} \
      ~{if defined(overwrite_output_file) then ("--output " +  '"' + overwrite_output_file + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip) then "--bzip" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    info: "print citation information"
    num_reads: "samples the number of sequences or pairs specified\\nwith -N (default: 100000)"
    random_seed: "Provide a random seed for the generator (default:\\nNone)"
    force_single: "Ignore read pair information if present (default:\\nFalse)"
    overwrite_output_file: "Overwrite output file if it exits (default: False)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    filenames: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_overwrite_output_file = "${in_overwrite_output_file}"
  }
}