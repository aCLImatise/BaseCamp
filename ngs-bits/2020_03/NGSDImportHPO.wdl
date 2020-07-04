version 1.0

task NGSDImportHPO {
  input {
    File? obo
    File? an_no
    File? omim
    File? clin_var
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
      ~{true="-test" false="" test} \
      ~{true="-force" false="" force} \
      ~{true="-debug" false="" debug} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    obo: "HPO ontology file from 'http://purl.obolibrary.org/obo/hp.obo'."
    an_no: "HPO annotations file from 'http://compbio.charite.de/jenkins/job/hpo.annotations.monthly/lastStableBuild/artifact/annotation/ALL_SOURCES_ALL_FREQUENCIES_diseases_to_genes_to_phenotypes.txt'"
    omim: "OMIM 'morbidmap.txt' file for additional disease-gene information, from 'https://omim.org/downloads/'. Default value: ''"
    clin_var: "ClinVar VCF file for additional disease-gene information. Download and unzip from 'ftp://ftp.ncbi.nlm.nih.gov/pub/clinvar/vcf_GRCh37/archive_2.0/2019/clinvar_20191111.vcf.gz'. Default value: ''"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    force: "If set, overwrites old data. Default value: 'false'"
    debug: "Enables debug output Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}