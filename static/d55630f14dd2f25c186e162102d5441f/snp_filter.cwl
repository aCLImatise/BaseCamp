class: CommandLineTool
id: snp_filter.py.cwl
inputs:
- id: sample_dirs_file
  doc: Relative or absolute path to file containing a list of directories -- one per
    sample
  type: string
  inputBinding:
    position: 0
- id: ref_fast_a_file
  doc: Relative or absolute path to the reference fasta file
  type: string
  inputBinding:
    position: 1
- id: force
  doc: 'Force processing even when result files already exist and are newer than inputs
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: vcf_name
  doc: 'File name of the input VCF files which must exist in each of the sample directories
    (default: var.flt.vcf)'
  type: string
  inputBinding:
    prefix: --vcfname
- id: edge_length
  doc: 'The length of the edge regions in a contig, in which all SNPs will be removed.
    (default: 500)'
  type: string
  inputBinding:
    prefix: --edge_length
- id: w
  doc: '[WINDOW_SIZE [WINDOW_SIZE ...]], --window_size [WINDOW_SIZE [WINDOW_SIZE ...]]
    The length of the window in which the number of SNPs should be no more than max_num_snp.
    (default: [1000])'
  type: boolean
  inputBinding:
    prefix: -w
- id: m
  doc: '[MAX_NUM_SNPs [MAX_NUM_SNPs ...]], --max_snp [MAX_NUM_SNPs [MAX_NUM_SNPs ...]]
    The maximum number of SNPs allowed in a window. (default: [3])'
  type: boolean
  inputBinding:
    prefix: -m
- id: out_group
  doc: 'Relative or absolute path to the file indicating outgroup samples, one sample
    ID per line. (default: None)'
  type: string
  inputBinding:
    prefix: --out_group
- id: mode
  doc: 'Control whether dense snp regions found in any sample are filtered from all
    of the samples, or each sample independently. (default: all)'
  type: string
  inputBinding:
    prefix: --mode
- id: v
  doc: '0..5, --verbose 0..5 Verbose message level (0=no info, 5=lots) (default: 1)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- snp_filter.py
