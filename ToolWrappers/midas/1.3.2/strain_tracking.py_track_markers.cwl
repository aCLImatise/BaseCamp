class: CommandLineTool
id: strain_tracking.py_track_markers.cwl
inputs:
- id: in_in_dir
  doc: "path to input snps directory for one species (contains files 'snps_*.txt')\n\
    requires having run 'merge_midas.py snps'"
  type: File
  inputBinding:
    prefix: --indir
- id: in_out
  doc: path to output file with marker sharing between all sample-pairs
  type: File
  inputBinding:
    prefix: --out
- id: in_markers
  doc: path to list of marker alleles output by 'strain_tracking.py id_markers'
  type: File
  inputBinding:
    prefix: --markers
- id: in_min_freq
  doc: minimum allele frequency (proportion of reads) per site for SNP calling (0.10)
  type: double
  inputBinding:
    prefix: --min_freq
- id: in_min_reads
  doc: minimum number of reads supporting allele per site for SNP calling (3)
  type: long
  inputBinding:
    prefix: --min_reads
- id: in_max_sites
  doc: "maximum number of sites to process (use all)\nuseful for quick tests"
  type: long
  inputBinding:
    prefix: --max_sites
- id: in_max_samples
  doc: "maximum number of samples to process (use all)\nuseful for quick tests"
  type: long
  inputBinding:
    prefix: --max_samples
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: path to output file with marker sharing between all sample-pairs
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_markers
  doc: path to list of marker alleles output by 'strain_tracking.py id_markers'
  type: File
  outputBinding:
    glob: $(inputs.in_markers)
cwlVersion: v1.1
baseCommand:
- strain_tracking.py
- track_markers
