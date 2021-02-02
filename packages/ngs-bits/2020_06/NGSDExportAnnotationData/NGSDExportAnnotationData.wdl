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
      ~{if (test) then "-test" else ""} \
      ~{if defined(max_af) then ("-maxAF " +  '"' + max_af + '"') else ""} \
      ~{if defined(gene_offset) then ("-gene_offset " +  '"' + gene_offset + '"') else ""} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{if defined(mode) then ("-mode " +  '"' + mode + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    variants: "Output variant list as VCF."
    genes: "Optional BED file containing the genes and the gene info (only germline).\\nDefault value: ''"
    reference: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used.\\nDefault value: ''"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    max_af: "Determines the maximum allel frequency for the variants (default: 0.05).\\nDefault value: '0.05'"
    gene_offset: "Defines the number of bases by which the region of each gene is extended.\\nDefault value: '5000'"
    chr: "Limit export to the given chromosome.\\nDefault value: ''"
    mode: "Determines the database which is exported.\\nDefault value: 'germline'\\nValid: 'germline,somatic'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}