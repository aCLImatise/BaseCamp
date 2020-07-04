version 1.0

task ShortStack {
  input {
    String? loci_file_dot
  }
  command <<<
    ShortStack \
      ~{if defined(loci_file_dot) then ("--locifile. " +  '"' + loci_file_dot + '"') else ""}
  >>>
  parameter_meta {
    loci_file_dot: "the value for --total_primaries to make a single locus run fast."
  }
}