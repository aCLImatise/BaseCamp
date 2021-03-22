version 1.0

task CreateFakeGenomepy {
  input {
    String? locus
    Boolean? strand
    String? output_prefix
    String genome_filename
  }
  command <<<
    create_fake_genome_py \
      ~{genome_filename} \
      ~{if defined(locus) then ("--locus " +  '"' + locus + '"') else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  parameter_meta {
    locus: "locus in format <chr>:<start>-<end>"
    strand: "{+,-}        strand of locus"
    output_prefix: "Output prefix\\n"
    genome_filename: "gff_filename"
  }
  output {
    File out_stdout = stdout()
  }
}