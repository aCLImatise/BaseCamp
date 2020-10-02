class: CommandLineTool
id: whatshap_find_snv_candidates.cwl
inputs:
- id: in_min_abs
  doc: 'Minimum absolute ALT depth to call a SNP (default: 3).'
  type: long
  inputBinding:
    prefix: --minabs
- id: in_min_rel
  doc: "Minimum relative ALT depth to call a SNP (default:\n0.25)."
  type: long
  inputBinding:
    prefix: --minrel
- id: in_multi_allelic_s
  doc: "Also output multi-allelic sites, if not given only the\nbest ALT allele is\
    \ reported (if unique)."
  type: boolean
  inputBinding:
    prefix: --multi-allelics
- id: in_sample
  doc: "Put this sample column into VCF (default: output\nsites-only VCF)."
  type: string
  inputBinding:
    prefix: --sample
- id: in_chromosome
  doc: "Name of chromosome to process. If not given, all\nchromosomes are processed."
  type: string
  inputBinding:
    prefix: --chromosome
- id: in_output
  doc: Output VCF file.
  type: File
  inputBinding:
    prefix: --output
- id: in_pac_bio
  doc: Input is PacBio. Sets minrel=0.25 and minabs=3.
  type: boolean
  inputBinding:
    prefix: --pacbio
- id: in_nano_pore
  doc: Input is Nanopore. Sets minrel=0.4 and minabs=3.
  type: boolean
  inputBinding:
    prefix: --nanopore
- id: in_illumina
  doc: Input is Illumina. Sets minrel=0.25 and minabs=3.
  type: boolean
  inputBinding:
    prefix: --illumina
- id: in_ref
  doc: FASTA with reference genome
  type: string
  inputBinding:
    position: 0
- id: in_bam
  doc: BAM file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output VCF file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- whatshap
- find_snv_candidates
