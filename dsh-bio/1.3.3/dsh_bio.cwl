class: CommandLineTool
id: ../../../dsh_bio.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: compress_bed
  doc: compress features in BED format to splittable bgzf or bzip2 compression codecs
  type: string
  inputBinding:
    position: 0
- id: compress_fast_a
  doc: compress sequences in FASTA format to splittable bgzf or bzip2 compression
    codecs
  type: string
  inputBinding:
    position: 1
- id: compress_fast_q
  doc: compress sequences in FASTQ format to splittable bgzf or bzip2 compression
    codecs
  type: string
  inputBinding:
    position: 2
- id: compress_gfa_one
  doc: compress assembly in GFA 1.0 format to splittable bgzf or bzip2 compression
    codecs
  type: string
  inputBinding:
    position: 3
- id: compress_gfa_two
  doc: compress assembly in GFA 2.0 format to splittable bgzf or bzip2 compression
    codecs
  type: string
  inputBinding:
    position: 4
- id: compress_gff_three
  doc: compress features in GFF3 format to splittable bgzf or bzip2 compression codecs
  type: string
  inputBinding:
    position: 5
- id: compress_sam
  doc: compress alignments in SAM format to splittable bgzf or bzip2 compression codecs
  type: string
  inputBinding:
    position: 6
- id: compress_vcf
  doc: compress variants and genotypes in VCF format to splittable bgzf or bzip2 compression
    codecs
  type: string
  inputBinding:
    position: 7
- id: create_sequence_dictionary
  doc: create a SequenceDictionary from sequences in FASTA format
  type: string
  inputBinding:
    position: 8
- id: disinter_leave_fast_q
  doc: convert interleaved FASTQ format into first and second sequence files in FASTQ
    format
  type: string
  inputBinding:
    position: 9
- id: down_sample_fast_q
  doc: downsample sequences from files in FASTQ format
  type: string
  inputBinding:
    position: 10
- id: down_sample_interleaved_fast_q
  doc: downsample sequences from a file in interleaved FASTQ format
  type: string
  inputBinding:
    position: 11
- id: extract_fast_a
  doc: extract matching sequences in FASTA format
  type: string
  inputBinding:
    position: 12
- id: extract_fast_q
  doc: extract matching sequences in FASTQ format
  type: string
  inputBinding:
    position: 13
- id: extract_fast_q_by_length
  doc: extract sequences in FASTQ format with a range of lengths
  type: string
  inputBinding:
    position: 14
- id: fast_a_to_fast_q
  doc: convert sequences in FASTA format to FASTQ format
  type: string
  inputBinding:
    position: 15
- id: fast_q_description
  doc: output description lines from sequences in FASTQ format
  type: string
  inputBinding:
    position: 16
- id: fast_q_sequence_length
  doc: output sequence lengths from sequences in FASTQ format
  type: string
  inputBinding:
    position: 17
- id: fast_q_to_fast_a
  doc: convert sequences in FASTQ format to FASTA format
  type: string
  inputBinding:
    position: 18
- id: filter_bed
  doc: filter features in BED format
  type: string
  inputBinding:
    position: 19
- id: filter_fast_a
  doc: filter sequences in FASTA format
  type: string
  inputBinding:
    position: 20
- id: filter_fast_q
  doc: filter sequences in FASTQ format
  type: string
  inputBinding:
    position: 21
- id: filter_gfa_one
  doc: filter assembly in GFA 1.0 format
  type: string
  inputBinding:
    position: 22
- id: filter_gfa_two
  doc: filter assembly in GFA 2.0 format
  type: string
  inputBinding:
    position: 23
- id: filter_gff_three
  doc: filter features in GFF3 format
  type: string
  inputBinding:
    position: 24
- id: filter_sam
  doc: filter alignments in SAM format
  type: string
  inputBinding:
    position: 25
- id: filter_vcf
  doc: filter variants in VCF format
  type: string
  inputBinding:
    position: 26
- id: gfa_one_to_gfa_two
  doc: convert GFA 1.0 format to GFA 2.0 format
  type: string
  inputBinding:
    position: 27
- id: interleave_fast_q
  doc: convert first and second sequence files in FASTQ format to interleaved FASTQ
    format
  type: long
  inputBinding:
    position: 28
- id: reassemble_paths
  doc: reassemble paths in GFA 1.0 format from traversal records
  type: string
  inputBinding:
    position: 29
- id: remap_phase_set
  doc: remap Type=String PS phase set ids in VCF format to Type=Integer
  type: string
  inputBinding:
    position: 30
- id: split_bed
  doc: split files in BED format
  type: string
  inputBinding:
    position: 31
- id: split_fast_a
  doc: split files in FASTA format
  type: string
  inputBinding:
    position: 32
- id: split_fast_q
  doc: split files in FASTQ format
  type: string
  inputBinding:
    position: 33
- id: split_gff_three
  doc: split files in GFF3 format
  type: string
  inputBinding:
    position: 34
- id: split_interleaved_fast_q
  doc: split files in interleaved FASTQ format
  type: string
  inputBinding:
    position: 35
- id: split_sam
  doc: split files in SAM format
  type: string
  inputBinding:
    position: 36
- id: split_vcf
  doc: split files in VCF format
  type: string
  inputBinding:
    position: 37
- id: traverse_paths
  doc: traverse paths in GFA 1.0 format
  type: string
  inputBinding:
    position: 38
- id: truncate_fast_a
  doc: truncate sequences in FASTA format
  type: string
  inputBinding:
    position: 39
- id: truncate_paths
  doc: truncate paths in GFA 1.0 format
  type: string
  inputBinding:
    position: 40
- id: variant_table_to_vcf
  doc: convert Ensembl variant table to VCF format
  type: string
  inputBinding:
    position: 41
- id: vcf_pedigree
  doc: extract a pedigree from VCF format
  type: string
  inputBinding:
    position: 42
- id: vcf_samples
  doc: extract samples from VCF format
  type: string
  inputBinding:
    position: 43
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-bio
