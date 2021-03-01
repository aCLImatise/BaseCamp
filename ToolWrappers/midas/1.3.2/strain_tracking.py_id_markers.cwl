class: CommandLineTool
id: strain_tracking.py_id_markers.cwl
inputs:
- id: in_in_dir
  doc: "path to input snps directory for one species (contains files 'snps_*.txt')\n\
    requires having run 'merge_midas.py snps'"
  type: File?
  inputBinding:
    prefix: --indir
- id: in_out
  doc: path to output file containing list of markers
  type: File?
  inputBinding:
    prefix: --out
- id: in_samples
  doc: "comma-separated list of training samples\nby default, all samples are used"
  type: File?
  inputBinding:
    prefix: --samples
- id: in_min_freq
  doc: minimum allele frequency (proportion of reads) per site for SNP calling (0.10)
  type: double?
  inputBinding:
    prefix: --min_freq
- id: in_min_reads
  doc: minimum number of reads supporting allele per site for SNP calling (3)
  type: long?
  inputBinding:
    prefix: --min_reads
- id: in_allele_prev
  doc: "maximum occurences of allele across samples (1)\nsetting this to 1 (default)\
    \ will pick alleles found in exactly 1 sample"
  type: long?
  inputBinding:
    prefix: --allele_prev
- id: in_max_sites
  doc: "maximum number of genomic sites to process (use all)\nuseful for quick tests"
  type: long?
  inputBinding:
    prefix: --max_sites
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: path to output file containing list of markers
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- strain_tracking.py
- id_markers
