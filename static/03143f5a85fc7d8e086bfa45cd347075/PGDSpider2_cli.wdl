version 1.0

task PGDSpider2cli {
  input {
    File? input_file
    File? input_format
    File? output_file
    File? output_format
    File? spid
    String pgd_spider_cli
    String options_dot_dot_dot
  }
  command <<<
    PGDSpider2_cli \
      ~{pgd_spider_cli} \
      ~{options_dot_dot_dot} \
      ~{if defined(input_file) then ("-inputfile " +  '"' + input_file + '"') else ""} \
      ~{if defined(input_format) then ("-inputformat " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_file) then ("-outputfile " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_format) then ("-outputformat " +  '"' + output_format + '"') else ""} \
      ~{if defined(spid) then ("-spid " +  '"' + spid + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pgdspider:2.1.1.5--0"
  }
  parameter_meta {
    input_file: "The input file for the conversion (mandatory)."
    input_format: "Format of the input file. Mandatory if not defined\\nin the answer (SPID) file.\\nPossible input formats:\\nPGD, ARLEQUIN, BAM, BAPS, BATWING, BCF, CONVERT, EIGENSOFT, FASTA,\\nFASTQ, FSTAT, GDA, GENELAND, GENEPOP, GENETIX, HGDP, HGDP_CEPH,\\nIMMANC, IM, IMA2, MAF, MEGA, MIGRATE, MSA, NEWHYBRIDS, NEXUS,\\nONESAMP, PED, PHYLIP, SAM, STRUCTURE, VCF, XMFA"
    output_file: "The output file for the conversion (mandatory)."
    output_format: "Format of the output file. Mandatory if not defined\\nin the answer (SPID) file.\\nPossible output formats:\\nPGD, ARLEQUIN, BAM, BAMOVA, BAPS, BATWING, BAYENV, BCF, EIGENSOFT,\\nFASTA, FASTQ, FDIST2, FSTAT, GDA, GENELAND, GENEPOP,\\nGENETIX,GESTE_BAYE_SCAN, IMMANC, IM, IMA2, KML, MEGA, MIGRATE, MSA,\\nMSVAR, NEWHYBRIDS, NEXUS, ONESAMP, PED, PHYLIP, SAM, STRUCTURAMA,\\nSTRUCTURE, VCF, XMFA"
    spid: "SPID file containing preanswered conversion questions\\n(mandatory)."
    pgd_spider_cli: ""
    options_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_output_format = "${in_output_format}"
  }
}