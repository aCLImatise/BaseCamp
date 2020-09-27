class: CommandLineTool
id: bcftools_roh.cwl
inputs:
- id: in_af_dflt
  doc: if AF is not known, use this allele frequency [skip]
  type: double
  inputBinding:
    prefix: --AF-dflt
- id: in_af_tag
  doc: use TAG for allele frequency
  type: string
  inputBinding:
    prefix: --AF-tag
- id: in_af_file
  doc: read allele frequencies from file (CHR\tPOS\tREF\tALT\tAF)
  type: File
  inputBinding:
    prefix: --AF-file
- id: in_buffer_size
  doc: "<int[,int]>      buffer size and the number of overlapping sites, 0 for unlimited\
    \ [0]\nIf the first number is negative, it is interpreted as the maximum memory\
    \ to\nuse, in MB. The default overlap is set to roughly 1% of the buffer size."
  type: boolean
  inputBinding:
    prefix: --buffer-size
- id: in_estimate_af
  doc: "[TAG],<file>     estimate AF from FORMAT/TAG (GT or PL) of all samples (\"\
    -\") or samples listed\nin <file>. If TAG is not given, the frequency is estimated\
    \ from GT by default"
  type: boolean
  inputBinding:
    prefix: --estimate-AF
- id: in_exclude
  doc: exclude sites for which the expression is true
  type: string
  inputBinding:
    prefix: --exclude
- id: in_gts_only
  doc: "use GTs and ignore PLs, instead using <float> for PL of the two least likely\
    \ genotypes.\nSafe value to use is 30 to account for GT errors."
  type: double
  inputBinding:
    prefix: --GTs-only
- id: in_include
  doc: select sites for which the expression is true
  type: string
  inputBinding:
    prefix: --include
- id: in_ignore_hom_ref
  doc: skip hom-ref genotypes (0/0)
  type: boolean
  inputBinding:
    prefix: --ignore-homref
- id: in_skip_indels
  doc: skip indels as their genotypes are enriched for errors
  type: boolean
  inputBinding:
    prefix: --skip-indels
- id: in_genetic_map
  doc: "genetic map in IMPUTE2 format, single file or mask, where string \"{CHROM}\"\
    \nis replaced with chromosome name"
  type: File
  inputBinding:
    prefix: --genetic-map
- id: in_rec_rate
  doc: constant recombination rate per bp
  type: double
  inputBinding:
    prefix: --rec-rate
- id: in_output
  doc: write output to a file [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: '[srz]            output s:per-site, r:regions, z:compressed [sr]'
  type: boolean
  inputBinding:
    prefix: --output-type
- id: in_regions
  doc: restrict to comma-separated list of regions
  type: string
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: restrict to regions listed in a file
  type: File
  inputBinding:
    prefix: --regions-file
- id: in_samples
  doc: list of samples to analyze [all samples]
  type: string
  inputBinding:
    prefix: --samples
- id: in_samples_file
  doc: file of samples to analyze [all samples]
  type: File
  inputBinding:
    prefix: --samples-file
- id: in_targets
  doc: similar to -r but streams rather than index-jumps
  type: string
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File
  inputBinding:
    prefix: --targets-file
- id: in_threads
  doc: use multithreading with <int> worker threads [0]
  type: long
  inputBinding:
    prefix: --threads
- id: in_hw_to_az
  doc: P(AZ|HW) transition probability from HW (Hardy-Weinberg) to AZ (autozygous)
    state [6.7e-8]
  type: double
  inputBinding:
    prefix: --hw-to-az
- id: in_az_to_hw
  doc: P(HW|AZ) transition probability from AZ to HW state [5e-9]
  type: double
  inputBinding:
    prefix: --az-to-hw
- id: in_viterbi_training
  doc: estimate HMM parameters, <float> is the convergence threshold, e.g. 1e-10 (experimental)
  type: double
  inputBinding:
    prefix: --viterbi-training
- id: in_in_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write output to a file [standard output]
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- bcftools
- roh
