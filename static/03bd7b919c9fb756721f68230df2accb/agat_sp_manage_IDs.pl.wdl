version 1.0

task AgatSpManageIDspl {
  input {
    File? gff
    Boolean? gap
    Boolean? ensembl
    Boolean? prefix
    Boolean? type_dependent
    Boolean? collective
    Boolean? tair
    Boolean? nb
    Int? primary_tag_option
    File? outfile
    String agat_sp_manage_ids_do_tpl
  }
  command <<<
    agat_sp_manage_IDs_pl \
      ~{agat_sp_manage_ids_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if (gap) then "--gap" else ""} \
      ~{if (ensembl) then "--ensembl" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (type_dependent) then "--type_dependent" else ""} \
      ~{if (collective) then "--collective" else ""} \
      ~{if (tair) then "--tair" else ""} \
      ~{if (nb) then "--nb" else ""} \
      ~{if defined(primary_tag_option) then ("-p " +  '"' + primary_tag_option + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    gap: "Integer - Increment the next gene (level1 feature) suffix with\\nthis value. Defauft 0."
    ensembl: "Boolean - For an ID Ensembl like (e.g PREFIXG00000000022). The\\nID is built as follow: $opt_prefix.$letterCode.0*.Number where\\nthe number of 0 is adapted in order to have 11 digits."
    prefix: "String - Add a specific prefix to the ID. By defaut if will be\\nthe feature type (3rd column)."
    type_dependent: "Boolean - Activate type_dependent numbering. The number is\\ndepedendent of the feature type. i.e instead of: NbV1Ch01\\nAUGUSTUS gene 97932 99714 0.06 - . ID=gene1 NbV1Ch01 AUGUSTUS\\nmRNA 97932 99714 0.06 - . ID=mRNA2 NbV1Ch01 AUGUSTUS exon 97932\\n98571 . - . ID=exon3 NbV1Ch01 AUGUSTUS exon 98679 98844 . - .\\nID=exon4 You will get: NbV1Ch01 AUGUSTUS gene 97932 99714 0.06 -\\n. ID=gene1 NbV1Ch01 AUGUSTUS mRNA 97932 99714 0.06 - . ID=mRNA1\\nNbV1Ch01 AUGUSTUS exon 97932 98571 . - . ID=exon1 NbV1Ch01\\nAUGUSTUS exon 98679 98844 . - . ID=exon2"
    collective: "Boolean - In the case of discontinuous features (i.e. a single\\nfeature that exists over multiple genomic locations like CDS,\\nUTR) we set a uniq ID by default. If you wish to set the a\\ncollective ID for those feature, please activate this option."
    tair: "Boolean - Tair like Output:\\nNbV1Ch01 TAIR10 gene 5928 8737 . - . ID=AT1G01020 NbV1Ch01\\nTAIR10 mRNA 5928 8737 . - . ID=AT1G01020.1 NbV1Ch01 TAIR10 exon\\n5928 8737 . - . ID=AT1G01020.1-exon1"
    nb: "Integer - Start numbering to this value. Default 1."
    primary_tag_option: "primary tag option, case insensitive, list. Allow to specied the\\nfeature types that will be handled. You can specified a specific\\nfeature by given its primary tag name (column 3) as: cds, Gene,\\nMrNa You can specify directly all the feature of a particular\\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By\\ndefault all feature are taken into account. fill the option by\\nthe value \\\"all\\\" will have the same behaviour."
    outfile: "String - Output GFF file. If no output file is specified, the\\noutput will be written to STDOUT."
    agat_sp_manage_ids_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}