version 1.0

task BayesTyperToolsConvertAllele {
  input {
    Boolean? arg_variant_format
    Boolean? arg_reference_genome
    Boolean? arg_output_prefix
    File? compress_output_files
    File? alt_file
    File? mei_file
    Boolean? keep_imprecise
    Boolean? keep_partial
  }
  command <<<
    bayesTyperTools convertAllele \
      ~{if (arg_variant_format) then "-v" else ""} \
      ~{if (arg_reference_genome) then "-g" else ""} \
      ~{if (arg_output_prefix) then "-o" else ""} \
      ~{if (compress_output_files) then "-z" else ""} \
      ~{if defined(alt_file) then ("--alt-file " +  '"' + alt_file + '"') else ""} \
      ~{if defined(mei_file) then ("--mei-file " +  '"' + mei_file + '"') else ""} \
      ~{if (keep_imprecise) then "--keep-imprecise" else ""} \
      ~{if (keep_partial) then "--keep-partial" else ""}
  >>>
  parameter_meta {
    arg_variant_format: "[ --variant-file ] arg             variant file (vcf format)."
    arg_reference_genome: "[ --genome-file ] arg              reference genome file (fasta format)."
    arg_output_prefix: "[ --output-prefix ] arg            output prefix."
    compress_output_files: "[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip."
    alt_file: "alternative allele file (fasta format). Sequence name in fasta (>\\\"name\\\") should match <\\\"name\\\">."
    mei_file: "mobile element insertion(s) file (fasta format). Sequence name in fasta (>\\\"name\\\") should match <INS:ME:\\\"name\\\">."
    keep_imprecise: "[=arg(=1)] (=0)      do not filter imprecise variants"
    keep_partial: "[=arg(=1)] (=0)        keep partial insertions where the center and length is unknown (Manta output supported). The known left and right side\\nis connected with ten N's.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_compress_output_files = "${in_compress_output_files}"
  }
}