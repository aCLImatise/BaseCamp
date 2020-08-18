class: CommandLineTool
id: ../../../bcftools_convert.cwl
inputs:
- id: exclude
  doc: exclude sites for which the expression is true
  type: string
  inputBinding:
    prefix: --exclude
- id: include
  doc: select sites for which the expression is true
  type: string
  inputBinding:
    prefix: --include
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
  doc: list of samples to include
  type: string
  inputBinding:
    prefix: --samples
- id: samples_file
  doc: file of samples to include
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
- id: no_version
  doc: do not append version and command line to the header
  type: boolean
  inputBinding:
    prefix: --no-version
- id: output
  doc: output file name [stdout]
  type: File
  inputBinding:
    prefix: --output
- id: output_type
  doc: 'b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed
    VCF [v]'
  type: string
  inputBinding:
    prefix: --output-type
- id: threads
  doc: use multithreading with <int> worker threads [0]
  type: long
  inputBinding:
    prefix: --threads
- id: gen_sample_two_vcf
  doc: <...>   <prefix>|<gen-file>,<sample-file>
  type: boolean
  inputBinding:
    prefix: --gensample2vcf
- id: gen_sample
  doc: <...>       <prefix>|<gen-file>,<sample-file>
  type: boolean
  inputBinding:
    prefix: --gensample
- id: tag
  doc: 'tag to take values for .gen file: GT,PL,GL,GP [GT]'
  type: string
  inputBinding:
    prefix: --tag
- id: chrom
  doc: output chromosome in first column instead of CHROM:POS_REF_ALT
  type: boolean
  inputBinding:
    prefix: --chrom
- id: sex
  doc: 'output sex column in the sample-file, input format is: Sample\t[MF]'
  type: File
  inputBinding:
    prefix: --sex
- id: vcf_ids
  doc: output VCF IDs in second column instead of CHROM:POS_REF_ALT
  type: boolean
  inputBinding:
    prefix: --vcf-ids
- id: gvc_f_two_vcf
  doc: expand gVCF reference blocks
  type: boolean
  inputBinding:
    prefix: --gvcf2vcf
- id: fast_a_ref
  doc: reference sequence in fasta format
  type: File
  inputBinding:
    prefix: --fasta-ref
- id: hap_sample_two_vcf
  doc: <...>   <prefix>|<hap-file>,<sample-file>
  type: boolean
  inputBinding:
    prefix: --hapsample2vcf
- id: hap_sample
  doc: <...>       <prefix>|<hap-file>,<sample-file>
  type: boolean
  inputBinding:
    prefix: --hapsample
- id: haploid_two_diploid
  doc: convert haploid genotypes to diploid homozygotes
  type: boolean
  inputBinding:
    prefix: --haploid2diploid
- id: hap_legend_sample_two_vcf
  doc: <...>  <prefix>|<hap-file>,<legend-file>,<sample-file>
  type: boolean
  inputBinding:
    prefix: --haplegendsample2vcf
- id: columns
  doc: columns of the input tsv file [ID,CHROM,POS,AA]
  type: string
  inputBinding:
    prefix: --columns
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- convert
