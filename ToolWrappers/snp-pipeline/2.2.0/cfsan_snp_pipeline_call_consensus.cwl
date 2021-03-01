class: CommandLineTool
id: cfsan_snp_pipeline_call_consensus.cwl
inputs:
- id: in_force
  doc: "Force processing even when result file already exists\nand is newer than inputs.\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_snp_list_file
  doc: "Relative or absolute path to the SNP list file across\nall samples. (default:\
    \ snplist.txt)"
  type: File?
  inputBinding:
    prefix: --snpListFile
- id: in_exclude_file
  doc: 'VCF file of positions to exclude. (default: None)'
  type: File?
  inputBinding:
    prefix: --excludeFile
- id: in_output
  doc: "Output file. Relative or absolute path to the\nconsensus fasta file for this\
    \ sample. (default:\nconsensus.fasta)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_min_base_qual
  doc: "Mimimum base quality score to count a read. All other\nsnp filters take effect\
    \ after the low-quality reads\nare discarded. (default: 0)"
  type: long?
  inputBinding:
    prefix: --minBaseQual
- id: in_min_cons_freq
  doc: "Consensus frequency. Mimimum fraction of high-quality\nreads supporting the\
    \ consensus to make a call.\n(default: 0.6)"
  type: double?
  inputBinding:
    prefix: --minConsFreq
- id: in_min_cons_dpth
  doc: "Consensus depth. Minimum number of high-quality reads\nsupporting the consensus\
    \ to make a call. (default: 1)"
  type: long?
  inputBinding:
    prefix: --minConsDpth
- id: in_min_cons_str_ddp_th
  doc: "Consensus strand depth. Minimum number of high-quality\nreads supporting the\
    \ consensus which must be present\non both the forward and reverse strands to\
    \ make a\ncall. (default: 0)"
  type: long?
  inputBinding:
    prefix: --minConsStrdDpth
- id: in_min_cons_st_rd_bias
  doc: "Strand bias. Minimum fraction of the high-quality\nconsensus-supporting reads\
    \ which must be present on\nboth the forward and reverse strands to make a call.\n\
    The numerator of this fraction is the number of high-\nquality consensus-supporting\
    \ reads on one strand. The\ndenominator is the total number of high-quality\n\
    consensus-supporting reads on both strands combined.\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --minConsStrdBias
- id: in_vcf_filename
  doc: "VCF Output file name. If specified, a VCF file with\nthis file name will be\
    \ created in the same directory\nas the consensus fasta file for this sample.\
    \ (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --vcfFileName
- id: in_vcf_refname
  doc: "Name of the reference file. This is only used in the\ngenerated VCF file header.\
    \ (default: Unknown\nreference)"
  type: File?
  inputBinding:
    prefix: --vcfRefName
- id: in_vcf_all_pos
  doc: "Flag to cause VCF file generation at all positions,\nnot just the snp positions.\
    \ This has no effect on the\nconsensus fasta file, it only affects the VCF file.\n\
    This capability is intended primarily as a diagnostic\ntool and enabling this\
    \ flag will greatly increase\nexecution time. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --vcfAllPos
- id: in_vcf_preserve_ref_case
  doc: "Flag to cause the VCF file generator to emit each\nreference base in uppercase/lowercase\
    \ as it appears in\nthe reference sequence file. If not specified, the\nreference\
    \ base is emitted in uppercase. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --vcfPreserveRefCase
- id: in_vcf_failed_snp_gt
  doc: "{.,0,1}\nControls the VCF file GT data element when a snp fails\nfilters.\
    \ Possible values: .) The GT element will be a\ndot, indicating unable to make\
    \ a call. 0) The GT\nelement will be 0, indicating the reference base. 1)\nThe\
    \ GT element will be the ALT index of the most\ncommonly occuring base, usually\
    \ 1. (default: .)"
  type: boolean?
  inputBinding:
    prefix: --vcfFailedSnpGt
- id: in_verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: long?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file. Relative or absolute path to the\nconsensus fasta file for this\
    \ sample. (default:\nconsensus.fasta)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_vcf_filename
  doc: "VCF Output file name. If specified, a VCF file with\nthis file name will be\
    \ created in the same directory\nas the consensus fasta file for this sample.\
    \ (default:\nNone)"
  type: File?
  outputBinding:
    glob: $(inputs.in_vcf_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- cfsan_snp_pipeline
- call_consensus
