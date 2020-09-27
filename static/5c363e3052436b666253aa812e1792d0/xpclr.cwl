class: CommandLineTool
id: xpclr.cwl
inputs:
- id: in_out
  doc: output file
  type: File
  inputBinding:
    prefix: --out
- id: in_format
  doc: "input expected. One of \"vcf\" (default), \"hdf5\", \"zarr\"\nor \"txt\""
  type: long
  inputBinding:
    prefix: --format
- id: in_input
  doc: input file vcf or hdf5
  type: File
  inputBinding:
    prefix: --input
- id: in_g_dist_key
  doc: key for genetic position in variants table of hdf5/VCF
  type: long
  inputBinding:
    prefix: --gdistkey
- id: in_samples_a
  doc: "Samples comprising population A. Comma separated list\nor path to file with\
    \ each ID on a line"
  type: File
  inputBinding:
    prefix: --samplesA
- id: in_samples_b
  doc: "Samples comprising population B. Comma separated list\nor path to file with\
    \ each ID on a line"
  type: File
  inputBinding:
    prefix: --samplesB
- id: in_r_rate
  doc: recombination rate per base
  type: string
  inputBinding:
    prefix: --rrate
- id: in_map
  doc: "If using XPCLR-style text format. Input map file as\nper XPCLR specs (tab\
    \ separated)"
  type: File
  inputBinding:
    prefix: --map
- id: in_popa
  doc: "If using XPCLR-style text format. Filepath to\npopulation A genotypes (space\
    \ separated)"
  type: File
  inputBinding:
    prefix: --popA
- id: in_pop_b
  doc: "If using XPCLR-style text format. Filepath to\npopulation B genotypes (space\
    \ separated)"
  type: File
  inputBinding:
    prefix: --popB
- id: in_chr
  doc: Which contig analysis is based on
  type: string
  inputBinding:
    prefix: --chr
- id: in_ld
  doc: LD cutoff to apply for weighting
  type: string
  inputBinding:
    prefix: --ld
- id: in_phased
  doc: whether data is phased for more precise r2 calculation
  type: boolean
  inputBinding:
    prefix: --phased
- id: in_verbose
  doc: "How verbose to be in logging. 10=DEBUG, 20=INFO,\n30=WARN, 40=ERROR, 50=CRITICAL"
  type: long
  inputBinding:
    prefix: --verbose
- id: in_max_snps
  doc: max SNPs in a window
  type: long
  inputBinding:
    prefix: --maxsnps
- id: in_min_snps
  doc: min SNPs in a window
  type: long
  inputBinding:
    prefix: --minsnps
- id: in_size
  doc: window size in base pairs
  type: long
  inputBinding:
    prefix: --size
- id: in_start
  doc: start base position for windows
  type: string
  inputBinding:
    prefix: --start
- id: in_stop
  doc: stop base position for windows
  type: string
  inputBinding:
    prefix: --stop
- id: in_step
  doc: step size for sliding windows
  type: long
  inputBinding:
    prefix: --step
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- xpclr
