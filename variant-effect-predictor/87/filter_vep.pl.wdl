version 1.0

task FilterVeppl {
  input {
    Boolean? input_file
    Boolean? format
    File? output_file
    File? force_overwrite
    Boolean? filter
    Boolean? list
    Boolean? count
    Boolean? only_matched
    Boolean? ontology
    String? arguments
  }
  command <<<
    filter_vep_pl \
      ~{arguments} \
      ~{if (input_file) then "--input_file" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (output_file) then "--output_file" else ""} \
      ~{if (force_overwrite) then "--force_overwrite" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (only_matched) then "--only_matched" else ""} \
      ~{if (ontology) then "--ontology" else ""}
  >>>
  parameter_meta {
    input_file: "[file]  -i   Specify the input file (i.e. the VEP results file).\\nIf no input file is specified, the script will\\nattempt to read from STDIN. Input may be gzipped - to\\nforce the script to read a file as gzipped, use --gz"
    format: "[format]         Specify input file format (vep or vcf)"
    output_file: "[file] -o   Specify the output file to write to. If no output file\\nis specified, the script will write to STDOUT"
    force_overwrite: "Force the script to overwrite the output file if it\\nalready exists"
    filter: "[filters]   -f   Add filter. Multiple --filter flags may be used, and\\nare treated as logical ANDs, i.e. all filters must\\npass for a line to be printed"
    list: "-l   List allowed fields from the input file"
    count: "-c   Print only a count of matched lines"
    only_matched: "In VCF files, the CSQ field that contains the\\nconsequence data will often contain more than one\\n\\\"block\\\" of consequence data, where each block\\ncorresponds to a variant/feature overlap. Using\\n--only_matched will remove blocks that do not pass the\\nfilters. By default, the script prints out the entire\\nVCF line if any of the blocks pass the filters."
    ontology: "-y   Use Sequence Ontology to match consequence terms. Use\\nwith operator \\\"is\\\" to match against all child terms of\\nyour value.\\ne.g. \\\"Consequence is coding_sequence_variant\\\" will\\nmatch missense_variant, synonymous_variant etc.\\nRequires database connection; defaults to connecting\\nto ensembldb.ensembl.org. Use --host, --port, --user,\\n--password, --version as per\\nvariant_effect_predictor.pl to change connection\\nparameters.\\n"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_force_overwrite = "${in_force_overwrite}"
  }
}