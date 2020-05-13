class: CommandLineTool
id: xpclr.cwl
inputs:
- id: out
  doc: output file
  type: string
  inputBinding:
    prefix: --out
- id: format
  doc: input expected. One of "vcf" (default), "hdf5", "zarr" or "txt"
  type: string
  inputBinding:
    prefix: --format
- id: input
  doc: input file vcf or hdf5
  type: string
  inputBinding:
    prefix: --input
- id: g_dist_key
  doc: key for genetic position in variants table of hdf5/VCF
  type: string
  inputBinding:
    prefix: --gdistkey
- id: samples_a
  doc: Samples comprising population A. Comma separated list or path to file with
    each ID on a line
  type: string
  inputBinding:
    prefix: --samplesA
- id: samples_b
  doc: Samples comprising population B. Comma separated list or path to file with
    each ID on a line
  type: string
  inputBinding:
    prefix: --samplesB
- id: r_rate
  doc: recombination rate per base
  type: string
  inputBinding:
    prefix: --rrate
- id: map
  doc: If using XPCLR-style text format. Input map file as per XPCLR specs (tab separated)
  type: string
  inputBinding:
    prefix: --map
- id: popa
  doc: If using XPCLR-style text format. Filepath to population A genotypes (space
    separated)
  type: string
  inputBinding:
    prefix: --popA
- id: pop_b
  doc: If using XPCLR-style text format. Filepath to population B genotypes (space
    separated)
  type: string
  inputBinding:
    prefix: --popB
- id: chr
  doc: Which contig analysis is based on
  type: string
  inputBinding:
    prefix: --chr
- id: ld
  doc: LD cutoff to apply for weighting
  type: string
  inputBinding:
    prefix: --ld
- id: phased
  doc: whether data is phased for more precise r2 calculation
  type: boolean
  inputBinding:
    prefix: --phased
- id: verbose
  doc: How verbose to be in logging. 10=DEBUG, 20=INFO, 30=WARN, 40=ERROR, 50=CRITICAL
  type: string
  inputBinding:
    prefix: --verbose
- id: max_snps
  doc: max SNPs in a window
  type: long
  inputBinding:
    prefix: --maxsnps
- id: min_snps
  doc: min SNPs in a window
  type: long
  inputBinding:
    prefix: --minsnps
- id: size
  doc: window size in base pairs
  type: long
  inputBinding:
    prefix: --size
- id: start
  doc: start base position for windows
  type: string
  inputBinding:
    prefix: --start
- id: stop
  doc: stop base position for windows
  type: string
  inputBinding:
    prefix: --stop
- id: step
  doc: step size for sliding windows
  type: string
  inputBinding:
    prefix: --step
outputs: []
cwlVersion: v1.1
baseCommand:
- xpclr
