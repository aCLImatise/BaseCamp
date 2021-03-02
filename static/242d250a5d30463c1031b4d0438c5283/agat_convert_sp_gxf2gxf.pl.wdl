version 1.0

task AgatConvertSpGxf2gxfpl {
  input {
    File? gff
    String? ct
    Directory? expose
    File? merge_loci
    Boolean? verbose_option_modify
    String? no_check
    String? debug
    File? output_gff_file
    Float? gff_version_input
    Float? gff_version_output
    Int agat_convert_sp_gxftwogxfdotpl
  }
  command <<<
    agat_convert_sp_gxf2gxf_pl \
      ~{agat_convert_sp_gxftwogxfdotpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(ct) then ("--ct " +  '"' + ct + '"') else ""} \
      ~{if defined(expose) then ("--expose " +  '"' + expose + '"') else ""} \
      ~{if defined(merge_loci) then ("--merge_loci " +  '"' + merge_loci + '"') else ""} \
      ~{if (verbose_option_modify) then "-v" else ""} \
      ~{if defined(no_check) then ("--no_check " +  '"' + no_check + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{if defined(gff_version_input) then ("--gff_version_input " +  '"' + gff_version_input + '"') else ""} \
      ~{if defined(gff_version_output) then ("--gff_version_output " +  '"' + gff_version_output + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    ct: "When the features do not have Parent/ID relationships, the\\nparser will try to group features using a common/shared\\nattribute (i.e. a locus tag.). By default locus_tag and gene_id.\\nYou can provide another specific common/shared attribute using\\nthis option."
    expose: "If you want to see, add or modified the feature relationships\\nyou will have to use this option. It will copy past in you\\nworking directory the json files used to define the relation\\nbetween feature types and their level organisation. Typical\\nlevel organisation: Level1 => gene; Level2 => mRNA; level3 =>\\nexon,cds,utrs If you get warning from the Omniscient parser that\\na feature relationship is not defined, you can provide\\ninformation about it within the exposed json files. Indeed, if\\nthe json files exists in your working directory, they will be\\nused by default."
    merge_loci: "Merge loci parameter, default deactivated. You turn on the\\nparameter if you want to merge loci into one locus when they\\noverlap. (at CDS level for mRNA, at exon level for other level2\\nfeatures. Strand has to be the same). Prokaryote can have\\noverlaping loci so it should not use it for prokaryote\\nannotation. In eukaryote, loci rarely overlap. Overlaps could be\\ndue to error in the file, mRNA can be merged under the same\\nparent gene if you acticate the option."
    verbose_option_modify: "Verbose option. To modify verbosity. Default is 1. 0 is quiet, 2\\nand 3 are increasing verbosity."
    no_check: "To deacticate all check that can be performed by the parser (e.g\\nfixing UTR, exon, coordinates etc...)"
    debug: "debug purpose"
    output_gff_file: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    gff_version_input: "If you don't want to use the autodection of the gff/gft version\\nyou give as input, you can force the tool to use the parser of\\nthe gff version you decide to use: 1,2,2.5 or 3. Remind: 2.5 is\\nsuposed to be gtf."
    gff_version_output: "If you don't want to use the autodection of the gff/gft version\\nyou give as input, you can force the tool to use the parser of\\nthe gff version you decide to use: 1,2,2.5 or 3. Remind: 2.5 is\\nsuposed to be gtf."
    agat_convert_sp_gxftwogxfdotpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}