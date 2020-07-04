version 1.0

task NGSDExportAnnotationData {
  input {
    File? variants
    File? genes
    File? reference
    Boolean? test
    Float? max_af
    Int? gene_offset
    String? chr
    String? mode
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDExportAnnotationData \
      ~{if defined(variants) then ("-variants " +  '"' + variants + '"') else ""} \
      ~{if defined(genes) then ("-genes " +  '"' + genes + '"') else ""} \
      ~{if defined(reference) then ("-reference " +  '"' + reference + '"') else ""} \
      ~{true="-test" false="" test} \
      ~{if defined(max_af) then ("-maxAF " +  '"' + max_af + '"') else ""} \
      ~{if defined(gene_offset) then ("-gene_offset " +  '"' + gene_offset + '"') else ""} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{if defined(mode) then ("-mode " +  '"' + mode + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    variants: "Output variant list as VCF."
    genes: "Optional BED file containing the genes and the gene info (only germline). Default value: ''"
    reference: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used. Default value: ''"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    max_af: "Determines the maximum allel frequency for the variants (default: 0.05). Default value: '0.05'"
    gene_offset: "Defines the number of bases by which the region of each gene is extended. Default value: '5000'"
    chr: "Limit export to the given chromosome. Default value: ''"
    mode: "Determines the database which is exported. Default value: 'germline' Valid: 'germline,somatic'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}