version 1.0

task AgatConvertSpGxf2gxf.pl {
  input {
    String? gff
    String? ct
    String? expose
    String? merge_loci
    Boolean? verbose_option_modify
    String? no_check
    String? debug
    String? output_gff_file
    String? gff_version_input
    String? gff_version_output
  }
  command <<<
    agat_convert_sp_gxf2gxf.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(ct) then ("--ct " +  '"' + ct + '"') else ""} \
      ~{if defined(expose) then ("--expose " +  '"' + expose + '"') else ""} \
      ~{if defined(merge_loci) then ("--merge_loci " +  '"' + merge_loci + '"') else ""} \
      ~{true="-v" false="" verbose_option_modify} \
      ~{if defined(no_check) then ("--no_check " +  '"' + no_check + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{if defined(gff_version_input) then ("--gff_version_input " +  '"' + gff_version_input + '"') else ""} \
      ~{if defined(gff_version_output) then ("--gff_version_output " +  '"' + gff_version_output + '"') else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    ct: "When the features do not have Parent/ID relationships, the parser will try to group features using a common/shared attribute (i.e. a locus tag.). By default locus_tag and gene_id. You can provide another specific common/shared attribute using this option."
    expose: "If you want to see, add or modified the feature relationships you will have to use this option. It will copy past in you working directory the json files used to define the relation between feature types and their level organisation. Typical level organisation: Level1 => gene; Level2 => mRNA; level3 => exon,cds,utrs If you get warning from the Omniscient parser that a feature relationship is not defined, you can provide information about it within the exposed json files. Indeed, if the json files exists in your working directory, they will be used by default."
    merge_loci: "Merge loci parameter, default deactivated. You turn on the parameter if you want to merge loci into one locus when they overlap. (at CDS level for mRNA, at exon level for other level2 features. Strand has to be the same). Prokaryote can have overlaping loci so it should not use it for prokaryote annotation. In eukaryote, loci rarely overlap. Overlaps could be due to error in the file, mRNA can be merged under the same parent gene if you acticate the option."
    verbose_option_modify: "Verbose option. To modify verbosity. Default is 1. 0 is quiet, 2 and 3 are increasing verbosity."
    no_check: "To deacticate all check that can be performed by the parser (e.g fixing UTR, exon, coordinates etc...)"
    debug: "debug purpose"
    output_gff_file: "Output GFF file. If no output file is specified, the output will be written to STDOUT."
    gff_version_input: "If you don't want to use the autodection of the gff/gft version you give as input, you can force the tool to use the parser of the gff version you decide to use: 1,2,2.5 or 3. Remind: 2.5 is suposed to be gtf."
    gff_version_output: "If you don't want to use the autodection of the gff/gft version you give as input, you can force the tool to use the parser of the gff version you decide to use: 1,2,2.5 or 3. Remind: 2.5 is suposed to be gtf."
  }
}