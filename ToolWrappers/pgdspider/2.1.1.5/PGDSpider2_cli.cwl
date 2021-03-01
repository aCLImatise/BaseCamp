class: CommandLineTool
id: PGDSpider2_cli.cwl
inputs:
- id: in_input_file
  doc: The input file for the conversion (mandatory).
  type: File?
  inputBinding:
    prefix: -inputfile
- id: in_input_format
  doc: "Format of the input file. Mandatory if not defined\nin the answer (SPID) file.\n\
    Possible input formats:\nPGD, ARLEQUIN, BAM, BAPS, BATWING, BCF, CONVERT, EIGENSOFT,\
    \ FASTA,\nFASTQ, FSTAT, GDA, GENELAND, GENEPOP, GENETIX, HGDP, HGDP_CEPH,\nIMMANC,\
    \ IM, IMA2, MAF, MEGA, MIGRATE, MSA, NEWHYBRIDS, NEXUS,\nONESAMP, PED, PHYLIP,\
    \ SAM, STRUCTURE, VCF, XMFA"
  type: File?
  inputBinding:
    prefix: -inputformat
- id: in_output_file
  doc: The output file for the conversion (mandatory).
  type: File?
  inputBinding:
    prefix: -outputfile
- id: in_output_format
  doc: "Format of the output file. Mandatory if not defined\nin the answer (SPID)\
    \ file.\nPossible output formats:\nPGD, ARLEQUIN, BAM, BAMOVA, BAPS, BATWING,\
    \ BAYENV, BCF, EIGENSOFT,\nFASTA, FASTQ, FDIST2, FSTAT, GDA, GENELAND, GENEPOP,\n\
    GENETIX,GESTE_BAYE_SCAN, IMMANC, IM, IMA2, KML, MEGA, MIGRATE, MSA,\nMSVAR, NEWHYBRIDS,\
    \ NEXUS, ONESAMP, PED, PHYLIP, SAM, STRUCTURAMA,\nSTRUCTURE, VCF, XMFA"
  type: File?
  inputBinding:
    prefix: -outputformat
- id: in_spid
  doc: "SPID file containing preanswered conversion questions\n(mandatory)."
  type: File?
  inputBinding:
    prefix: -spid
- id: in_pgd_spider_cli
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: The output file for the conversion (mandatory).
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_output_format
  doc: "Format of the output file. Mandatory if not defined\nin the answer (SPID)\
    \ file.\nPossible output formats:\nPGD, ARLEQUIN, BAM, BAMOVA, BAPS, BATWING,\
    \ BAYENV, BCF, EIGENSOFT,\nFASTA, FASTQ, FDIST2, FSTAT, GDA, GENELAND, GENEPOP,\n\
    GENETIX,GESTE_BAYE_SCAN, IMMANC, IM, IMA2, KML, MEGA, MIGRATE, MSA,\nMSVAR, NEWHYBRIDS,\
    \ NEXUS, ONESAMP, PED, PHYLIP, SAM, STRUCTURAMA,\nSTRUCTURE, VCF, XMFA"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_format)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pgdspider:2.1.1.5--0
cwlVersion: v1.1
baseCommand:
- PGDSpider2-cli
