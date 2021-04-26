version 1.0

task AgatConvertBed2gffpl {
  input {
    Boolean? bed
    Boolean? source
    Boolean? primary_tag
    Boolean? inflate_off
    Boolean? inflate_type
    Boolean? verbose
    File? outfile
    Int agat_convert_bed_two_gff_do_tpl
  }
  command <<<
    agat_convert_bed2gff_pl \
      ~{agat_convert_bed_two_gff_do_tpl} \
      ~{if (bed) then "--bed" else ""} \
      ~{if (source) then "--source" else ""} \
      ~{if (primary_tag) then "--primary_tag" else ""} \
      ~{if (inflate_off) then "--inflate_off" else ""} \
      ~{if (inflate_type) then "--inflate_type" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    bed: "Input bed file that will be converted."
    source: "The source informs about the tool used to produce the data and\\nis stored in 2nd field of a gff file. Example:\\nStringtie,Maker,Augustus,etc. [default: data]"
    primary_tag: "The primary_tag corresponds to the data type and is stored in\\n3rd field of a gff file. Example: gene,mRNA,CDS,etc. [default:\\ngene]"
    inflate_off: "By default we inflate the block fields (blockCount, blockSizes,\\nblockStarts) to create subfeatures of the main feature\\n(primary_tag). The type of subfeature created is based on the\\ninflate_type parameter. If you do not want this inflating\\nbehaviour you can deactivate it by using the --inflate_off\\noption."
    inflate_type: "Feature type (3rd column in gff) created when inflate parameter\\nactivated [default: exon]."
    verbose: "add verbosity"
    outfile: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_convert_bed_two_gff_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}