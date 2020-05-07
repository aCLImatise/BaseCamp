class: CommandLineTool
id: bcftools_roh.cwl
inputs:
- id: in_vcf_gz
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: af_dflt
  doc: if AF is not known, use this allele frequency [skip]
  type: double
  inputBinding:
    prefix: --AF-dflt
- id: af_tag
  doc: use TAG for allele frequency
  type: string
  inputBinding:
    prefix: --AF-tag
- id: af_file
  doc: read allele frequencies from file (CHR\tPOS\tREF\tALT\tAF)
  type: File
  inputBinding:
    prefix: --AF-file
- id: buffer_size
  doc: <int[,int]>      buffer size and the number of overlapping sites, 0 for unlimited
    [0] If the first number is negative, it is interpreted as the maximum memory to
    use, in MB. The default overlap is set to roughly 1% of the buffer size.
  type: boolean
  inputBinding:
    prefix: --buffer-size
- id: estimate_af
  doc: '[TAG],<file>     estimate AF from FORMAT/TAG (GT or PL) of all samples ("-")
    or samples listed in <file>. If TAG is not given, the frequency is estimated from
    GT by default'
  type: boolean
  inputBinding:
    prefix: --estimate-AF
- id: exclude
  doc: exclude sites for which the expression is true
  type: string
  inputBinding:
    prefix: --exclude
- id: gts_only
  doc: use GTs and ignore PLs, instead using <float> for PL of the two least likely
    genotypes. Safe value to use is 30 to account for GT errors.
  type: double
  inputBinding:
    prefix: --GTs-only
- id: include
  doc: select sites for which the expression is true
  type: string
  inputBinding:
    prefix: --include
- id: ignore_hom_ref
  doc: skip hom-ref genotypes (0/0)
  type: boolean
  inputBinding:
    prefix: --ignore-homref
- id: skip_indels
  doc: skip indels as their genotypes are enriched for errors
  type: boolean
  inputBinding:
    prefix: --skip-indels
- id: genetic_map
  doc: genetic map in IMPUTE2 format, single file or mask, where string "{CHROM}"
    is replaced with chromosome name
  type: File
  inputBinding:
    prefix: --genetic-map
- id: rec_rate
  doc: constant recombination rate per bp
  type: double
  inputBinding:
    prefix: --rec-rate
- id: output
  doc: write output to a file [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: output_type
  doc: '[srz]            output s:per-site, r:regions, z:compressed [sr]'
  type: boolean
  inputBinding:
    prefix: --output-type
- id: regions
  doc: restrict to comma-separated list of regions
  type: string
  inputBinding:
    prefix: --regions
- id: regions_file
  doc: restrict to regions listed in a file
  type: File
  inputBinding:
    prefix: --regions-file
- id: samples
  doc: list of samples to analyze [all samples]
  type: string
  inputBinding:
    prefix: --samples
- id: samples_file
  doc: file of samples to analyze [all samples]
  type: File
  inputBinding:
    prefix: --samples-file
- id: targets
  doc: similar to -r but streams rather than index-jumps
  type: string
  inputBinding:
    prefix: --targets
- id: targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File
  inputBinding:
    prefix: --targets-file
- id: threads
  doc: use multithreading with <int> worker threads [0]
  type: long
  inputBinding:
    prefix: --threads
- id: hw_to_az
  doc: P(AZ|HW) transition probability from HW (Hardy-Weinberg) to AZ (autozygous)
    state [6.7e-8]
  type: double
  inputBinding:
    prefix: --hw-to-az
- id: az_to_hw
  doc: P(HW|AZ) transition probability from AZ to HW state [5e-9]
  type: double
  inputBinding:
    prefix: --az-to-hw
- id: viterbi_training
  doc: estimate HMM parameters, <float> is the convergence threshold, e.g. 1e-10 (experimental)
  type: double
  inputBinding:
    prefix: --viterbi-training
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- roh
