version 1.0

task GdtoolsINTERSECT {
  input {
    File? output_genome_diff
    Boolean? verbose
  }
  command <<<
    gdtools INTERSECT \
      ~{if defined(output_genome_diff) then ("--output " +  '"' + output_genome_diff + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    output_genome_diff: "Output Genome Diff file name (DEFAULT=output.gd)"
    verbose: "Verbose mode"
  }
  output {
    File out_stdout = stdout()
    File out_output_genome_diff = "${in_output_genome_diff}"
  }
}