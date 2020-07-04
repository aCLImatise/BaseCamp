version 1.0

task Bam2occupancy {
  input {
    String? name
    String? hash_file
    Boolean? verbose
    File path
  }
  command <<<
    bam2occupancy \
      ~{path} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(hash_file) then ("--hashfile " +  '"' + hash_file + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    name: "name for this occupancy vector (prepended to occupancy vector)"
    hash_file: "for .bam input, write sorted hash file to the given path"
    verbose: "for .bam input, output progress messages every million reads to stderr"
    path: "input .bam file, or hash .h5 file created by a previous run"
  }
}