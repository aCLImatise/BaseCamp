class: CommandLineTool
id: create_snp_list.py.cwl
inputs:
- id: sample_dirs_file
  doc: Relative or absolute path to file containing a list of directories -- one per
    sample
  type: string
  inputBinding:
    position: 0
- id: filtered_sample_dirs_file
  doc: Relative or absolute path to the output file that will be created containing
    the filtered list of sample directories -- one per sample. The samples in this
    file are those without an excessive number of snps. See the --maxsnps parameter.
  type: string
  inputBinding:
    position: 1
- id: force
  doc: 'Force processing even when result file already exists and is newer than inputs
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: vcf_name
  doc: 'File name of the VCF files which must exist in each of the sample directories
    (default: var.flt.vcf)'
  type: string
  inputBinding:
    prefix: --vcfname
- id: max_snps
  doc: 'Exclude samples having more than this maximum allowed number of SNPs. Set
    to -1 to disable this function. (default: -1)'
  type: long
  inputBinding:
    prefix: --maxsnps
- id: output
  doc: 'Output file. Relative or absolute path to the SNP list file (default: snplist.txt)'
  type: File
  inputBinding:
    prefix: --output
- id: v
  doc: '0..5, --verbose 0..5 Verbose message level (0=no info, 5=lots) (default: 1)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- create_snp_list.py
