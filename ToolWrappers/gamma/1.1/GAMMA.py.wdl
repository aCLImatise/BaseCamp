version 1.0

task GAMMApy {
  input {
    Boolean? all
    Boolean? extended
    Boolean? fast_a
    Boolean? gff
    Int? percent_identity
    String input_fast_a
    String database
    String output_name
  }
  command <<<
    GAMMA_py \
      ~{input_fast_a} \
      ~{database} \
      ~{output_name} \
      ~{if (all) then "--all" else ""} \
      ~{if (extended) then "--extended" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (gff) then "--gff" else ""} \
      ~{if defined(percent_identity) then ("--percent_identity " +  '"' + percent_identity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gamma:1.1--0"
  }
  parameter_meta {
    all: "include all gene matches, even overlaps"
    extended: "writes out all protein mutations"
    fast_a: "write fasta of gene matches"
    gff: "write gene matches as gff file"
    percent_identity: "minimum nucleotide identity for blat search (default =\\n90)\\n"
    input_fast_a: "input fasta"
    database: "input database"
    output_name: "output name"
  }
  output {
    File out_stdout = stdout()
  }
}