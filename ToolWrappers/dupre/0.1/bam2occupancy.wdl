version 1.0

task Bam2occupancy {
  input {
    String? name
    Int? hash_file
    Boolean? verbose
    File path
  }
  command <<<
    bam2occupancy \
      ~{path} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(hash_file) then ("--hashfile " +  '"' + hash_file + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: "name for this occupancy vector (prepended to occupancy\\nvector)"
    hash_file: "for .bam input, write sorted hash file to the given\\npath"
    verbose: "for .bam input, output progress messages every million\\nreads to stderr"
    path: "input .bam file, or hash .h5 file created by a\\nprevious run"
  }
  output {
    File out_stdout = stdout()
  }
}