class: CommandLineTool
id: strain_tracking.py_track_markers.cwl
inputs:
- id: in_dir
  doc: path to input snps directory for one species (contains files 'snps_*.txt')
    requires having run 'merge_midas.py snps'
  type: File
  inputBinding:
    prefix: --indir
- id: out
  doc: path to output file with marker sharing between all sample-pairs
  type: File
  inputBinding:
    prefix: --out
- id: markers
  doc: path to list of marker alleles output by 'strain_tracking.py id_markers'
  type: File
  inputBinding:
    prefix: --markers
- id: min_freq
  doc: minimum allele frequency (proportion of reads) per site for SNP calling (0.10)
  type: double
  inputBinding:
    prefix: --min_freq
- id: min_reads
  doc: minimum number of reads supporting allele per site for SNP calling (3)
  type: long
  inputBinding:
    prefix: --min_reads
- id: max_sites
  doc: maximum number of sites to process (use all) useful for quick tests
  type: long
  inputBinding:
    prefix: --max_sites
- id: max_samples
  doc: maximum number of samples to process (use all) useful for quick tests
  type: long
  inputBinding:
    prefix: --max_samples
outputs: []
cwlVersion: v1.1
baseCommand:
- strain_tracking.py
- track_markers
