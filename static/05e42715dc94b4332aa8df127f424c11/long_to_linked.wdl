version 1.0

task Longtolinked {
  input {
    Int? length
    Int? min_size
    Boolean? auto_span
    Boolean? auto_dist
    Int? genome_size
    File? param_outfile
    Boolean? v
  }
  command <<<
    long_to_linked \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(min_size) then ("--min_size " +  '"' + min_size + '"') else ""} \
      ~{if (auto_span) then "--auto_span" else ""} \
      ~{if (auto_dist) then "--auto_dist" else ""} \
      ~{if defined(genome_size) then ("--genome_size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(param_outfile) then ("--param_outfile " +  '"' + param_outfile + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tigmint:1.2.2--py_1"
  }
  parameter_meta {
    length: "Length for long reads to be cut to"
    min_size: "Minimum read length to be considered a molecule"
    auto_span: "Option to calculate spanning molecules threshold"
    auto_dist: "Option to calculate read length p5 for dist parameter"
    genome_size: "Genome size for calculating sequence coverage and\\nminimum spanning molecules parameter (e.g. 3e9)"
    param_outfile: "Output file for calculated span\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_param_outfile = "${in_param_outfile}"
  }
}