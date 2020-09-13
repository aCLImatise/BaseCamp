version 1.0

task Vcflatten {
  input {
    File? _info_keysspecify
    File? _genotype_keysspecify
    Boolean? one_file
    Boolean? no_header
    Boolean? ignore_errors
    File? prefix
    File? _pattern_pattern
    File filename
  }
  command <<<
    vcflatten \
      ~{filename} \
      ~{if defined(_info_keysspecify) then ("-i " +  '"' + _info_keysspecify + '"') else ""} \
      ~{if defined(_genotype_keysspecify) then ("-g " +  '"' + _genotype_keysspecify + '"') else ""} \
      ~{if (one_file) then "--one-file" else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if (ignore_errors) then "--ignore-errors" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(_pattern_pattern) then ("-o " +  '"' + _pattern_pattern + '"') else ""}
  >>>
  parameter_meta {
    _info_keysspecify: "| --info <keys>\\nSpecify a semicolon-separated list of INFO IDs to output for each variant from the VCF file."
    _genotype_keysspecify: "| --genotype <keys>\\nSpecify a colon-separated list of FORMAT IDs to output for each sample from the VCF file."
    one_file: "If this flag is set, then only 1 TSV file will be generated for all samples. In addition, this file will have a SAMPLE column which indicates which sample the data belongs to."
    no_header: "If this flag is set, the TSV header won't be written to any of the output files."
    ignore_errors: "If this flag is set, then any errors in the VCF file will be ignored, and the invalid rows will be skipped."
    prefix: "A filename prefix that can be used in the output pattern. If this is not set, then the prefix is the same as <filename>."
    _pattern_pattern: "| --pattern <pattern>\\nThe pattern to use when generating output files. The default is \\\"%p-%s-%d\\\". Valid special patterns are:\\n%p    Include the \\\"prefix\\\" here (either <filename> or given in --prefix <prefix>\\n%s    The name of the sample, taken from the header of the VCF file.\\n%i    The index of the sample (1-based).\\n%%    A single, literal '%'.\\nIf neither %s nor %d is provided, then the VCF file must have only 1 sample.\\n"
    filename: ""
  }
  output {
    File out_stdout = stdout()
    File out__info_keysspecify = "${in__info_keysspecify}"
    File out__genotype_keysspecify = "${in__genotype_keysspecify}"
    File out_prefix = "${in_prefix}"
    File out__pattern_pattern = "${in__pattern_pattern}"
  }
}