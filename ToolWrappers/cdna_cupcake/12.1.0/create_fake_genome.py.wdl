version 1.0

task CreateFakeGenomepy {
  input {
    String? locus
    Boolean? strand
    String? output_prefix
  }
  command <<<
    create_fake_genome_py \
      ~{if defined(locus) then ("--locus " +  '"' + locus + '"') else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  parameter_meta {
    locus: "locus in format <chr>:<start>-<end>"
    strand: "{+,-}        strand of locus"
    output_prefix: "Output prefix\\n"
  }
  output {
    File out_stdout = stdout()
  }
}