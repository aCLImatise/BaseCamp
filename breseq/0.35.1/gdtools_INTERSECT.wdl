version 1.0

task GdtoolsINTERSECT {
  input {
    String? output_genome_diff
    Boolean? verbose
  }
  command <<<
    gdtools INTERSECT \
      ~{if defined(output_genome_diff) then ("--output " +  '"' + output_genome_diff + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    output_genome_diff: "Output Genome Diff file name (DEFAULT=output.gd)"
    verbose: "Verbose mode"
  }
}