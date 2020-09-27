class: CommandLineTool
id: snp_filter.py.cwl
inputs:
- id: in_force
  doc: "Force processing even when result files already exist\nand are newer than\
    \ inputs (default: False)"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_vcf_name
  doc: "File name of the input VCF files which must exist in\neach of the sample directories\
    \ (default: var.flt.vcf)"
  type: File
  inputBinding:
    prefix: --vcfname
- id: in_edge_length
  doc: "The length of the edge regions in a contig, in which\nall SNPs will be removed.\
    \ (default: 500)"
  type: long
  inputBinding:
    prefix: --edge_length
- id: in_length_window_number
  doc: "[WINDOW_SIZE [WINDOW_SIZE ...]], --window_size [WINDOW_SIZE [WINDOW_SIZE ...]]\n\
    The length of the window in which the number of SNPs\nshould be no more than max_num_snp.\
    \ (default: [1000])"
  type: boolean
  inputBinding:
    prefix: -w
- id: in_maximum_number_snps
  doc: "[MAX_NUM_SNPs [MAX_NUM_SNPs ...]], --max_snp [MAX_NUM_SNPs [MAX_NUM_SNPs ...]]\n\
    The maximum number of SNPs allowed in a window.\n(default: [3])"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_out_group
  doc: "Relative or absolute path to the file indicating\noutgroup samples, one sample\
    \ ID per line. (default:\nNone)"
  type: File
  inputBinding:
    prefix: --out_group
- id: in_mode
  doc: "Control whether dense snp regions found in any sample\nare filtered from all\
    \ of the samples, or each sample\nindependently. (default: all)"
  type: string
  inputBinding:
    prefix: --mode
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
- id: in_ref_fast_a_file
  doc: Relative or absolute path to the reference fasta file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- snp_filter.py
