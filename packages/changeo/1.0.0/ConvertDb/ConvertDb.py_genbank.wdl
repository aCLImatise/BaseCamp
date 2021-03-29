version 1.0

task ConvertDbpyGenbank {
  input {
    Array[String] list_tab_defaultnone
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    String? format
    String? mol
    String? product
    String? db
    String? inf
    String? organism
    String? sex
    String? isolate
    String? tissue
    String? cell_type
    File? yaml_file_specifying
    String? label
    String? cf
    String? nf
    String? specified_use_theairrcellindex
    Boolean? allow_stop
    Boolean? as_is_id
    Boolean? as_is_calls
    Int? allele_delim
    Boolean? asn
    File? sbt
    Int? exec
  }
  command <<<
    ConvertDb_py genbank \
      ~{if defined(list_tab_defaultnone) then ("-d " +  '"' + list_tab_defaultnone + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(mol) then ("--mol " +  '"' + mol + '"') else ""} \
      ~{if defined(product) then ("--product " +  '"' + product + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(inf) then ("--inf " +  '"' + inf + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sex) then ("--sex " +  '"' + sex + '"') else ""} \
      ~{if defined(isolate) then ("--isolate " +  '"' + isolate + '"') else ""} \
      ~{if defined(tissue) then ("--tissue " +  '"' + tissue + '"') else ""} \
      ~{if defined(cell_type) then ("--cell-type " +  '"' + cell_type + '"') else ""} \
      ~{if defined(yaml_file_specifying) then ("-y " +  '"' + yaml_file_specifying + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(cf) then ("--cf " +  '"' + cf + '"') else ""} \
      ~{if defined(nf) then ("--nf " +  '"' + nf + '"') else ""} \
      ~{if defined(specified_use_theairrcellindex) then ("--if " +  '"' + specified_use_theairrcellindex + '"') else ""} \
      ~{if (allow_stop) then "--allow-stop" else ""} \
      ~{if (as_is_id) then "--asis-id" else ""} \
      ~{if (as_is_calls) then "--asis-calls" else ""} \
      ~{if defined(allele_delim) then ("--allele-delim " +  '"' + allele_delim + '"') else ""} \
      ~{if (asn) then "--asn" else ""} \
      ~{if defined(sbt) then ("--sbt " +  '"' + sbt + '"') else ""} \
      ~{if defined(exec) then ("--exec " +  '"' + exec + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_tab_defaultnone: "A list of tab delimited database files. (default:\\nNone)"
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir, or --outname\\narguments. If unspecified, then the output filename\\nwill be based on the input filename(s). (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    format: "Specify input and output format. (default: airr)"
    mol: "The source molecule type. Usually one of \\\"mRNA\\\" or\\n\\\"genomic DNA\\\". (default: mRNA)"
    product: "The product name, such as \\\"immunoglobulin heavy\\nchain\\\". (default: immunoglobulin heavy chain)"
    db: "Name of the reference database used for alignment.\\nUsually \\\"IMGT/GENE-DB\\\". (default: None)"
    inf: "Name and version of the inference tool used for\\nreference alignment in the form tool:version.\\n(default: None)"
    organism: "The scientific name of the organism. (default: None)"
    sex: "If specified, adds the given sex annotation to the\\nfasta headers. (default: None)"
    isolate: "If specified, adds the given isolate annotation\\n(sample label) to the fasta headers. (default: None)"
    tissue: "If specified, adds the given tissue-type annotation to\\nthe fasta headers. (default: None)"
    cell_type: "If specified, adds the given cell-type annotation to\\nthe fasta headers. (default: None)"
    yaml_file_specifying: "A yaml file specifying sample features (BioSample\\nattributes) in the form 'variable: value'. If\\nspecified, any features provided in the yaml file will\\noverride those provided at the commandline. Note, this\\nconfig file applies to sample features only and cannot\\nbe used for required source features such as the\\n--product or --mol argument. (default: None)"
    label: "If specified, add a field name to the sequence\\nidentifier. Sequence identifiers will be output in the\\nform <label>=<id>. (default: None)"
    cf: "Field containing the C region call. If unspecified,\\nthe C region gene call will be excluded from the\\nfeature table. (default: None)"
    nf: "If specified, use the provided column to add the\\nAIRR_READ_COUNT note to the feature table. (default:\\nNone)"
    specified_use_theairrcellindex: "If specified, use the provided column to add the\\nAIRR_CELL_INDEX note to the feature table. (default:\\nNone)"
    allow_stop: "If specified, retain records in the output with stop\\ncodons in the junction region. In such records the CDS\\nwill be removed and replaced with a similar\\nmisc_feature in the feature table. (default: False)"
    as_is_id: "If specified, use the existing sequence identifier for\\nthe output identifier. By default, only the row number\\nwill be used as the identifier to avoid the 50\\ncharacter limit. (default: False)"
    as_is_calls: "Specify to prevent alleles from being parsed using the\\nIMGT nomenclature. Note, this requires the gene\\nassignments to be exact matches to valid records in\\nthe references database specified by the --db\\nargument. (default: False)"
    allele_delim: "The delimiter to use for splitting the gene name from\\nthe allele number. Note, this only applies when\\nspecifying --asis-calls. By default, this argument\\nwill be ignored and allele numbers extracted under the\\nexpectation of IMGT nomenclature consistency.\\n(default: *)"
    asn: "If specified, run tbl2asn to generate the .sqn\\nsubmission file after making the .fsa and .tbl files.\\n(default: False)"
    sbt: "If provided along with --asn, use the specified file\\nfor the template file argument to tbl2asn. (default:\\nNone)"
    exec: "The name or location of the tbl2asn executable.\\n(default: tbl2asn)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}