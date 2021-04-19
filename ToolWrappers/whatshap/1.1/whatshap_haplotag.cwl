class: CommandLineTool
id: whatshap_haplotag.cwl
inputs:
- id: in_output
  doc: Output file. If omitted, use standard output.
  type: File?
  inputBinding:
    prefix: --output
- id: in_reference
  doc: "Reference file. Provide this to detect alleles through\nre-alignment. If no\
    \ index (.fai) exists, it will be\ncreated"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_regions
  doc: "Specify region(s) of interest to limit the tagging to\nreads/variants overlapping\
    \ those regions. You can\nspecify a space-separated list of regions in the form\n\
    of chrom:start-end, chrom (consider entire\nchromosome), or chrom:start (consider\
    \ region from this\nstart to end of chromosome)."
  type: string?
  inputBinding:
    prefix: --regions
- id: in_ignore_linked_read
  doc: Ignore linkage information stored in BX tags of the
  type: boolean?
  inputBinding:
    prefix: --ignore-linked-read
- id: in_ignore_read_groups
  doc: "Ignore read groups in BAM/CRAM header and assume all\nreads come from the\
    \ same sample."
  type: boolean?
  inputBinding:
    prefix: --ignore-read-groups
- id: in_sample
  doc: "Name of a sample to phase. If not given, all samples\nin the input VCF are\
    \ phased. Can be used multiple\ntimes."
  type: string?
  inputBinding:
    prefix: --sample
- id: in_output_haplo_tag_list
  doc: "Write assignments of read names to haplotypes (tab\nseparated) to given output\
    \ file. If filename ends in\n.gz, then output is gzipped."
  type: File?
  inputBinding:
    prefix: --output-haplotag-list
- id: in_tag_supplementary
  doc: "Also tag supplementary alignments. Supplementary\nalignments are assigned\
    \ to the same haplotype the\nprimary alignment has been assigned to (default:\
    \ only\ntag primary alignments).\n"
  type: boolean?
  inputBinding:
    prefix: --tag-supplementary
- id: in_vcf
  doc: "VCF file with phased variants (must be gzip-compressed\nand indexed)"
  type: string
  inputBinding:
    position: 0
- id: in_alignments
  doc: File (BAM/CRAM) with read alignments to be tagged by
  type: string
  inputBinding:
    position: 1
- id: in_haplotype
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
- id: in_reads_dot
  doc: --linked-read-distance-cutoff LINKEDREADDISTANCE, -d LINKEDREADDISTANCE
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file. If omitted, use standard output.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_haplo_tag_list
  doc: "Write assignments of read names to haplotypes (tab\nseparated) to given output\
    \ file. If filename ends in\n.gz, then output is gzipped."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_haplo_tag_list)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/whatshap:1.1--py39h7cff6ad_0
cwlVersion: v1.1
baseCommand:
- whatshap
- haplotag
