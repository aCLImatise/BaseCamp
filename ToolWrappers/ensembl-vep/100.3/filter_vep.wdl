version 1.0

task FilterVep {
  input {
    Boolean? input_file
    Boolean? format
    File? output_file
    File? force_overwrite
    Boolean? filter
    Boolean? list
    Boolean? count
    Boolean? only_matched
    Boolean? vcf_info_field
    Boolean? ontology
  }
  command <<<
    filter_vep \
      ~{if (input_file) then "--input_file" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (output_file) then "--output_file" else ""} \
      ~{if (force_overwrite) then "--force_overwrite" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (only_matched) then "--only_matched" else ""} \
      ~{if (vcf_info_field) then "--vcf_info_field" else ""} \
      ~{if (ontology) then "--ontology" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "[file]  -i   Specify the input file (i.e. the VEP results file).\\nIf no input file is specified, the script will\\nattempt to read from STDIN. Input may be gzipped - to\\nforce the script to read a file as gzipped, use --gz"
    format: "[vcf|tab]        Specify input file format (tab for any tab-delimited\\nformat, including default VEP output format)"
    output_file: "[file] -o   Specify the output file to write to. If no output file\\nis specified, the script will write to STDOUT"
    force_overwrite: "Force the script to overwrite the output file if it\\nalready exists"
    filter: "[filters]   -f   Add filter. Multiple --filter flags may be used, and\\nare treated as logical ANDs, i.e. all filters must\\npass for a line to be printed"
    list: "List allowed fields from the input file"
    count: "Print only a count of matched lines"
    only_matched: "In VCF files, the CSQ field that contains the\\nconsequence data will often contain more than one\\n\\\"block\\\" of consequence data, where each block\\ncorresponds to a variant/feature overlap. Using\\n--only_matched will remove blocks that do not pass the\\nfilters. By default, the script prints out the entire\\nVCF line if any of the blocks pass the filters."
    vcf_info_field: "[key]    With VCF input files, by default filter_vep expects to\\nfind VEP annotations encoded in the CSQ INFO key; VEP\\nitself can be configured to write to a different key\\n(with the equivalent --vcf_info_field flag). Use this\\nflag to change the INFO key VEP expects to decode."
    ontology: "Use Sequence Ontology to match consequence terms. Use\\nwith operator \\\"is\\\" to match against all child terms of\\nyour value.\\ne.g. \\\"Consequence is coding_sequence_variant\\\" will\\nmatch missense_variant, synonymous_variant etc.\\nRequires database connection; defaults to connecting\\nto ensembldb.ensembl.org. Use --host, --port, --user,\\n--password, --version as per ./vep to change\\nconnection parameters.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_force_overwrite = "${in_force_overwrite}"
  }
}