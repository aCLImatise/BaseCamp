version 1.0

task BayesTyperToolsConvertAllele {
  input {
    Boolean? arg_variant_format
    Boolean? arg_reference_genome
    Boolean? arg_output_prefix
    Boolean? compress_output_files
    String? alt_file
    String? mei_file
    Boolean? keep_imprecise
    Boolean? keep_partial
  }
  command <<<
    bayesTyperTools convertAllele \
      ~{true="-v" false="" arg_variant_format} \
      ~{true="-g" false="" arg_reference_genome} \
      ~{true="-o" false="" arg_output_prefix} \
      ~{true="-z" false="" compress_output_files} \
      ~{if defined(alt_file) then ("--alt-file " +  '"' + alt_file + '"') else ""} \
      ~{if defined(mei_file) then ("--mei-file " +  '"' + mei_file + '"') else ""} \
      ~{true="--keep-imprecise" false="" keep_imprecise} \
      ~{true="--keep-partial" false="" keep_partial}
  >>>
  parameter_meta {
    arg_variant_format: "[ --variant-file ] arg             variant file (vcf format)."
    arg_reference_genome: "[ --genome-file ] arg              reference genome file (fasta format)."
    arg_output_prefix: "[ --output-prefix ] arg            output prefix."
    compress_output_files: "[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip."
    alt_file: "alternative allele file (fasta format). Sequence name in fasta (>\"name\") should match <\"name\">."
    mei_file: "mobile element insertion(s) file (fasta format). Sequence name in fasta (>\"name\") should match <INS:ME:\"name\">."
    keep_imprecise: "[=arg(=1)] (=0)      do not filter imprecise variants"
    keep_partial: "[=arg(=1)] (=0)        keep partial insertions where the center and length is unknown (Manta output supported). The known left and right side  is connected with ten N's."
  }
}