version 1.0

task AgatConvertGenscan2gff.pl {
  input {
    String? genscan
    Boolean? source
    Boolean? primary_tag
    Boolean? inflate_off
    Boolean? inflate_type
    Boolean? verbose
    Boolean? _output_
  }
  command <<<
    agat_convert_genscan2gff.pl \
      ~{if defined(genscan) then ("--genscan " +  '"' + genscan + '"') else ""} \
      ~{true="--source" false="" source} \
      ~{true="--primary_tag" false="" primary_tag} \
      ~{true="--inflate_off" false="" inflate_off} \
      ~{true="--inflate_type" false="" inflate_type} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-o" false="" _output_}
  >>>
  parameter_meta {
    genscan: "Input bed file that will be convert."
    source: "The source informs about the tool used to produce the data and is stored in 2nd field of a gff file. Example: Stringtie,Maker,Augustus,etc. [default: data]"
    primary_tag: "The primary_tag corresponf to the data type and is stored in 3rd field of a gff file. Example: gene,mRNA,CDS,etc. [default: gene]"
    inflate_off: "By default we inflate the block fields (blockCount, blockSizes, blockStarts) to create subfeatures of the main feature (primary_tag). Type of subfeature created based on the inflate_type parameter. If you don't want this inflating behaviour you can deactivate it by using the option --inflate_off."
    inflate_type: "Feature type (3rd column in gff) created when inflate parameter activated [default: exon]."
    verbose: "add verbosity"
    _output_: ", --output , --out , --outfile or --gff Output GFF file. If no output file is specified, the output will be written to STDOUT."
  }
}