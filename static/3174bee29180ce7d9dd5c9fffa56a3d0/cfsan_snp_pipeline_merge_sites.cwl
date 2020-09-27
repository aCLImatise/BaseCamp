class: CommandLineTool
id: cfsan_snp_pipeline_merge_sites.cwl
inputs:
- id: in_force
  doc: "Force processing even when result file already exists\nand is newer than inputs\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_vcf_name
  doc: "File name of the VCF files which must exist in each of\nthe sample directories\
    \ (default: var.flt.vcf)"
  type: File
  inputBinding:
    prefix: --vcfname
- id: in_max_snps
  doc: "Exclude samples having more than this maximum allowed\nnumber of SNPs. Set\
    \ to -1 to disable this function.\n(default: -1)"
  type: long
  inputBinding:
    prefix: --maxsnps
- id: in_output
  doc: "Output file. Relative or absolute path to the SNP list\nfile (default: snplist.txt)"
  type: File
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: long
  inputBinding:
    prefix: --verbose
- id: in_sample_dirs_file
  doc: "Relative or absolute path to file containing a list of\ndirectories -- one\
    \ per sample"
  type: string
  inputBinding:
    position: 0
- id: in_filtered_sample_dirs_file
  doc: "Relative or absolute path to the output file that will\nbe created containing\
    \ the filtered list of sample\ndirectories -- one per sample. The samples in this\n\
    file are those without an excessive number of snps.\nSee the --maxsnps parameter."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file. Relative or absolute path to the SNP list\nfile (default: snplist.txt)"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- cfsan_snp_pipeline
- merge_sites
