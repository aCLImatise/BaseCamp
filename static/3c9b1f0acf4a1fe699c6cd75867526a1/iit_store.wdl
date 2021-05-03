version 1.0

task IitStore {
  input {
    File? name_output_iit
    Boolean? old_format
    Boolean? accession_only
    Boolean? fields
    Boolean? gff
    String? label
    Int? sort
    Int? i_it_version
    String? options_dot_dot_dot
    String input_file
  }
  command <<<
    iit_store \
      ~{options_dot_dot_dot} \
      ~{input_file} \
      ~{if defined(name_output_iit) then ("--output " +  '"' + name_output_iit + '"') else ""} \
      ~{if (old_format) then "--oldformat" else ""} \
      ~{if (accession_only) then "--accession-only" else ""} \
      ~{if (fields) then "--fields" else ""} \
      ~{if (gff) then "--gff" else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{if defined(i_it_version) then ("--iitversion " +  '"' + i_it_version + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gmap:2021.03.08--pl5262h36cd882_0"
  }
  parameter_meta {
    name_output_iit: "Name of output iit file"
    old_format: "Old format for intervals:\\n<start> <optional end> <optional div> <optional type>"
    accession_only: "Process only the first word of each FASTA header, and ignore the rest of the line"
    fields: "Annotation consists of separate fields"
    gff: "Parse input file in gff3 format"
    label: "For gff input, the feature attribute to use (default is ID)"
    sort: "Sorting of divisions: none, alpha, numeric-alpha, or chrom (default)\\nnumeric-alpha: chr1 chr1_random chr2 chr10 chr10_random chrM chrUn chrX chrY\\nchrom: chr1 chr2 chr10 chrX chrY chrM chr1_random chr10_random chrUn\\nNote 1: For sorting purposes, any initial 'chr' will be ignored\\nNote 2: For chrom, X, Y, M, MT (or chrX, chrY, and so on) are special"
    i_it_version: "Desired iit version for output iit\\n(default = 0, which means latest version)"
    options_dot_dot_dot: ""
    input_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_iit = "${in_name_output_iit}"
  }
}