class: CommandLineTool
id: rtg_help_help.cwl
inputs:
- id: format
  doc: convert sequence data files to SDF
  type: string
  inputBinding:
    position: 0
- id: sdf2fasta
  doc: convert SDF to FASTA
  type: string
  inputBinding:
    position: 1
- id: sdf2fastq
  doc: convert SDF to FASTQ
  type: string
  inputBinding:
    position: 2
- id: sdf2sam
  doc: convert SDF to SAM/BAM
  type: string
  inputBinding:
    position: 3
- id: fast_q_trim
  doc: trim reads in FASTQ files
  type: string
  inputBinding:
    position: 4
- id: genome_sim
  doc: generate simulated genome sequence
  type: string
  inputBinding:
    position: 0
- id: cg_sim
  doc: generate simulated reads from a sequence
  type: string
  inputBinding:
    position: 1
- id: read_sim
  doc: generate simulated reads from a sequence
  type: string
  inputBinding:
    position: 2
- id: pop_sim
  doc: generate a VCF containing simulated population variants
  type: string
  inputBinding:
    position: 3
- id: samples_im
  doc: generate a VCF containing a genotype simulated from a population
  type: string
  inputBinding:
    position: 4
- id: child_sim
  doc: generate a VCF containing a genotype simulated as a child of two parents
  type: string
  inputBinding:
    position: 5
- id: de_novo_sim
  doc: generate a VCF containing a derived genotype containing de novo variants
  type: string
  inputBinding:
    position: 6
- id: ped_samples_im
  doc: generate simulated genotypes for all members of a pedigree
  type: string
  inputBinding:
    position: 7
- id: sample_replay
  doc: generate the genome corresponding to a sample genotype
  type: string
  inputBinding:
    position: 8
- id: b_gzip
  doc: compress a file using block gzip
  type: string
  inputBinding:
    position: 0
- id: index
  doc: create a tabix index
  type: string
  inputBinding:
    position: 1
- id: extract
  doc: extract data from a tabix indexed file
  type: string
  inputBinding:
    position: 2
- id: sdf_stats
  doc: print statistics about an SDF
  type: string
  inputBinding:
    position: 3
- id: sdf_subset
  doc: extract a subset of an SDF into a new SDF
  type: string
  inputBinding:
    position: 4
- id: sdf_subseq
  doc: extract a subsequence from an SDF as text
  type: string
  inputBinding:
    position: 5
- id: mendelian
  doc: check a multisample VCF for Mendelian consistency
  type: string
  inputBinding:
    position: 6
- id: vcf_stats
  doc: print statistics about variants contained within a VCF file
  type: string
  inputBinding:
    position: 7
- id: vcf_merge
  doc: merge single-sample VCF files into a single multi-sample VCF
  type: string
  inputBinding:
    position: 8
- id: vcf_filter
  doc: filter records within a VCF file
  type: string
  inputBinding:
    position: 9
- id: vcf_annotate
  doc: annotate variants within a VCF file
  type: string
  inputBinding:
    position: 10
- id: vcf_subset
  doc: create a VCF file containing a subset of the original columns
  type: string
  inputBinding:
    position: 11
- id: vcf_split
  doc: split a multi-sample VCF into one file per sample
  type: string
  inputBinding:
    position: 12
- id: vcf_decompose
  doc: decompose complex variants within a VCF file
  type: string
  inputBinding:
    position: 13
- id: vcf_eval
  doc: evaluate called variants for agreement with a baseline variant set
  type: string
  inputBinding:
    position: 14
- id: sv_decompose
  doc: split composite structural variants into a breakend representation
  type: string
  inputBinding:
    position: 15
- id: bnd_eval
  doc: evaluate called breakends for agreement with a baseline breakend set
  type: string
  inputBinding:
    position: 16
- id: ped_filter
  doc: filter and convert a pedigree file
  type: string
  inputBinding:
    position: 17
- id: ped_stats
  doc: print information about a pedigree file
  type: string
  inputBinding:
    position: 18
- id: roc_plot
  doc: plot ROC curves from vcfeval ROC data files
  type: string
  inputBinding:
    position: 19
- id: version
  doc: print version and license information
  type: string
  inputBinding:
    position: 20
- id: license
  doc: print license information for all commands
  type: string
  inputBinding:
    position: 21
- id: help
  doc: print this screen or help for specified command
  type: string
  inputBinding:
    position: 22
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- help
