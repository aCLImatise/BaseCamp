version 1.0

task ConvertDb.pyGenbank {
  input {
    Array[String] list_tab_delimited
    Array[String] explicit_output_file
    String? outdir
    String? out_name
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
    String? yaml_file_sample
    String? label
    String? cf
    String? nf
    String? specified_use_airrcellindex
    Boolean? allow_stop
    Boolean? as_is_id
    Boolean? as_is_calls
    String? allele_delim
    Boolean? asn
    String? sbt
    String? exec
  }
  command <<<
    ConvertDb.py genbank \
      ~{if defined(list_tab_delimited) then ("-d " +  '"' + list_tab_delimited + '"') else ""} \
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
      ~{if defined(yaml_file_sample) then ("-y " +  '"' + yaml_file_sample + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(cf) then ("--cf " +  '"' + cf + '"') else ""} \
      ~{if defined(nf) then ("--nf " +  '"' + nf + '"') else ""} \
      ~{if defined(specified_use_airrcellindex) then ("--if " +  '"' + specified_use_airrcellindex + '"') else ""} \
      ~{true="--allow-stop" false="" allow_stop} \
      ~{true="--asis-id" false="" as_is_id} \
      ~{true="--asis-calls" false="" as_is_calls} \
      ~{if defined(allele_delim) then ("--allele-delim " +  '"' + allele_delim + '"') else ""} \
      ~{true="--asn" false="" asn} \
      ~{if defined(sbt) then ("--sbt " +  '"' + sbt + '"') else ""} \
      ~{if defined(exec) then ("--exec " +  '"' + exec + '"') else ""}
  >>>
  parameter_meta {
    list_tab_delimited: "A list of tab delimited database files. (default: None)"
    explicit_output_file: "Explicit output file name. Note, this argument cannot be used with the --failed, --outdir, or --outname arguments. If unspecified, then the output filename will be based on the input filename(s). (default: None)"
    outdir: "Specify to changes the output directory to the location specified. The input file directory is used if this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed output file to the string specified. May not be specified with multiple input files. (default: None)"
    format: "Specify input and output format. (default: airr)"
    mol: "The source molecule type. Usually one of \"mRNA\" or \"genomic DNA\". (default: mRNA)"
    product: "The product name, such as \"immunoglobulin heavy chain\". (default: immunoglobulin heavy chain)"
    db: "Name of the reference database used for alignment. Usually \"IMGT/GENE-DB\". (default: None)"
    inf: "Name and version of the inference tool used for reference alignment in the form tool:version. (default: None)"
    organism: "The scientific name of the organism. (default: None)"
    sex: "If specified, adds the given sex annotation to the fasta headers. (default: None)"
    isolate: "If specified, adds the given isolate annotation (sample label) to the fasta headers. (default: None)"
    tissue: "If specified, adds the given tissue-type annotation to the fasta headers. (default: None)"
    cell_type: "If specified, adds the given cell-type annotation to the fasta headers. (default: None)"
    yaml_file_sample: "A yaml file specifying sample features (BioSample attributes) in the form 'variable: value'. If specified, any features provided in the yaml file will override those provided at the commandline. Note, this config file applies to sample features only and cannot be used for required source features such as the --product or --mol argument. (default: None)"
    label: "If specified, add a field name to the sequence identifier. Sequence identifiers will be output in the form <label>=<id>. (default: None)"
    cf: "Field containing the C region call. If unspecified, the C region gene call will be excluded from the feature table. (default: None)"
    nf: "If specified, use the provided column to add the AIRR_READ_COUNT note to the feature table. (default: None)"
    specified_use_airrcellindex: "If specified, use the provided column to add the AIRR_CELL_INDEX note to the feature table. (default: None)"
    allow_stop: "If specified, retain records in the output with stop codons in the junction region. In such records the CDS will be removed and replaced with a similar misc_feature in the feature table. (default: False)"
    as_is_id: "If specified, use the existing sequence identifier for the output identifier. By default, only the row number will be used as the identifier to avoid the 50 character limit. (default: False)"
    as_is_calls: "Specify to prevent alleles from being parsed using the IMGT nomenclature. Note, this requires the gene assignments to be exact matches to valid records in the references database specified by the --db argument. (default: False)"
    allele_delim: "The delimiter to use for splitting the gene name from the allele number. Note, this only applies when specifying --asis-calls. By default, this argument will be ignored and allele numbers extracted under the expectation of IMGT nomenclature consistency. (default: *)"
    asn: "If specified, run tbl2asn to generate the .sqn submission file after making the .fsa and .tbl files. (default: False)"
    sbt: "If provided along with --asn, use the specified file for the template file argument to tbl2asn. (default: None)"
    exec: "The name or location of the tbl2asn executable. (default: tbl2asn)"
  }
}