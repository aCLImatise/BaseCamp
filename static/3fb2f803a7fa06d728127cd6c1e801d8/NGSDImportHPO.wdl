version 1.0

task NGSDImportHPO {
  input {
    File? obo
    File? an_no
    File? omim
    File? clin_var
    File? hgmd
    Boolean? test
    Boolean? force
    Boolean? debug
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDImportHPO \
      ~{if defined(obo) then ("-obo " +  '"' + obo + '"') else ""} \
      ~{if defined(an_no) then ("-anno " +  '"' + an_no + '"') else ""} \
      ~{if defined(omim) then ("-omim " +  '"' + omim + '"') else ""} \
      ~{if defined(clin_var) then ("-clinvar " +  '"' + clin_var + '"') else ""} \
      ~{if defined(hgmd) then ("-hgmd " +  '"' + hgmd + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    obo: "HPO ontology file from 'http://purl.obolibrary.org/obo/hp.obo'."
    an_no: "HPO annotations file from 'https://ci.monarchinitiative.org/view/hpo/job/hpo.annotations/lastSuccessfulBuild/artifact/rare-diseases/util/annotation/phenotype_to_genes.txt'"
    omim: "OMIM 'morbidmap.txt' file for additional disease-gene information, from 'https://omim.org/downloads/'.\\nDefault value: ''"
    clin_var: "ClinVar VCF file for additional disease-gene information. Download and unzip from 'ftp://ftp.ncbi.nlm.nih.gov/pub/clinvar/vcf_GRCh37/archive_2.0/2021/clinvar_20210110.vcf.gz'.\\nDefault value: ''"
    hgmd: "HGMD phenobase file (Manually download and unzip 'hgmd_phenbase-2020.4.dump').\\nDefault value: ''"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    force: "If set, overwrites old data.\\nDefault value: 'false'"
    debug: "Enables debug output\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}