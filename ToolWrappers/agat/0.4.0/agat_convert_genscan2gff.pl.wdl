version 1.0

task AgatConvertGenscan2gffpl {
  input {
    File? genscan
    Boolean? source
    Boolean? primary_tag
    Boolean? inflate_off
    Boolean? inflate_type
    Boolean? verbose
    File? outfile
    Int agat_convert_genscan_two_gff_do_tpl
  }
  command <<<
    agat_convert_genscan2gff_pl \
      ~{agat_convert_genscan_two_gff_do_tpl} \
      ~{if defined(genscan) then ("--genscan " +  '"' + genscan + '"') else ""} \
      ~{if (source) then "--source" else ""} \
      ~{if (primary_tag) then "--primary_tag" else ""} \
      ~{if (inflate_off) then "--inflate_off" else ""} \
      ~{if (inflate_type) then "--inflate_type" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genscan: "Input bed file that will be convert."
    source: "The source informs about the tool used to produce the data and\\nis stored in 2nd field of a gff file. Example:\\nStringtie,Maker,Augustus,etc. [default: data]"
    primary_tag: "The primary_tag corresponf to the data type and is stored in 3rd\\nfield of a gff file. Example: gene,mRNA,CDS,etc. [default: gene]"
    inflate_off: "By default we inflate the block fields (blockCount, blockSizes,\\nblockStarts) to create subfeatures of the main feature\\n(primary_tag). Type of subfeature created based on the\\ninflate_type parameter. If you don't want this inflating\\nbehaviour you can deactivate it by using the option\\n--inflate_off."
    inflate_type: "Feature type (3rd column in gff) created when inflate parameter\\nactivated [default: exon]."
    verbose: "add verbosity"
    outfile: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_convert_genscan_two_gff_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}