class: CommandLineTool
id: bcftools_convert.cwl
inputs:
- id: in_exclude
  doc: exclude sites for which the expression is true
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_include
  doc: select sites for which the expression is true
  type: string?
  inputBinding:
    prefix: --include
- id: in_regions
  doc: restrict to comma-separated list of regions
  type: string?
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: restrict to regions listed in a file
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_samples
  doc: list of samples to include
  type: string?
  inputBinding:
    prefix: --samples
- id: in_samples_file
  doc: file of samples to include
  type: File?
  inputBinding:
    prefix: --samples-file
- id: in_targets
  doc: similar to -r but streams rather than index-jumps
  type: string?
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File?
  inputBinding:
    prefix: --targets-file
- id: in_no_version
  doc: do not append version and command line to the header
  type: boolean?
  inputBinding:
    prefix: --no-version
- id: in_output
  doc: output file name [stdout]
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: 'b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed
    VCF [v]'
  type: string?
  inputBinding:
    prefix: --output-type
- id: in_threads
  doc: use multithreading with <int> worker threads [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_gen_sample_two_vcf
  doc: <...>   <prefix>|<gen-file>,<sample-file>
  type: boolean?
  inputBinding:
    prefix: --gensample2vcf
- id: in_gen_sample
  doc: <...>       <prefix>|<gen-file>,<sample-file>
  type: boolean?
  inputBinding:
    prefix: --gensample
- id: in_tag
  doc: 'tag to take values for .gen file: GT,PL,GL,GP [GT]'
  type: File?
  inputBinding:
    prefix: --tag
- id: in_chrom
  doc: output chromosome in first column instead of CHROM:POS_REF_ALT
  type: boolean?
  inputBinding:
    prefix: --chrom
- id: in_keep_duplicates
  doc: keep duplicate positions
  type: boolean?
  inputBinding:
    prefix: --keep-duplicates
- id: in_sex
  doc: 'output sex column in the sample-file, input format is: Sample\t[MF]'
  type: File?
  inputBinding:
    prefix: --sex
- id: in_vcf_ids
  doc: output VCF IDs in second column instead of CHROM:POS_REF_ALT
  type: boolean?
  inputBinding:
    prefix: --vcf-ids
- id: in_gvc_f_two_vcf
  doc: expand gVCF reference blocks
  type: boolean?
  inputBinding:
    prefix: --gvcf2vcf
- id: in_fast_a_ref
  doc: reference sequence in fasta format
  type: File?
  inputBinding:
    prefix: --fasta-ref
- id: in_hap_sample_two_vcf
  doc: <...>   <prefix>|<hap-file>,<sample-file>
  type: boolean?
  inputBinding:
    prefix: --hapsample2vcf
- id: in_hap_sample
  doc: <...>       <prefix>|<hap-file>,<sample-file>
  type: boolean?
  inputBinding:
    prefix: --hapsample
- id: in_haploid_two_diploid
  doc: convert haploid genotypes to diploid homozygotes
  type: boolean?
  inputBinding:
    prefix: --haploid2diploid
- id: in_hap_legend_sample_two_vcf
  doc: <...>  <prefix>|<hap-file>,<legend-file>,<sample-file>
  type: boolean?
  inputBinding:
    prefix: --haplegendsample2vcf
- id: in_tsv_two_vcf
  doc: columns of the input tsv file [ID,CHROM,POS,AA]
  type: File?
  inputBinding:
    prefix: --tsv2vcf
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file name [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcftools:1.11--h7c999a4_0
cwlVersion: v1.1
baseCommand:
- bcftools
- convert
