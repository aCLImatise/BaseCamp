#!/usr/bin/env cwl-runner

baseCommand:
- SURVIVOR
class: CommandLineTool
cwlVersion: v1.0
id: survivor
inputs:
- doc: Simulates SVs and SNPs on a reference genome.
  id: sims_v
  inputBinding:
    position: 0
  type: string
- doc: Obtain error profiles form mapped reads for simulation.
  id: scan_reads
  inputBinding:
    position: 1
  type: string
- doc: Simulates long reads (Pacio or ONT).
  id: sim_reads
  inputBinding:
    position: 2
  type: string
- doc: Evaluates a VCF file after SV calling over simulated data.
  id: eval
  inputBinding:
    position: 3
  type: string
- doc: Filter a vcf file based on size and/or regions to ignore
  id: filter
  inputBinding:
    position: 0
  type: string
- doc: Report multipe stats over a VCF file
  id: stats
  inputBinding:
    position: 1
  type: string
- doc: Annotates a VCF file with the breakpoints found with MUMMer (Show-diff).
  id: comp_mummer
  inputBinding:
    position: 2
  type: string
- doc: Bins coverage vector to a bed file to filter SVs in low MQ regions
  id: bin_cov
  inputBinding:
    position: 0
  type: string
- doc: Converts a VCF file to a bed file
  id: vcf_to_bed
  inputBinding:
    position: 1
  type: string
- doc: 'Converts a bed file to a VCF file '
  id: bed_to_vcf
  inputBinding:
    position: 2
  type: string
- doc: Converts the smap file to a VCF file (beta version)
  id: smap_to_vcf
  inputBinding:
    position: 3
  type: string
- doc: Converts a bedpe file ot a VCF file (beta version)
  id: bed_pe_to_vcf
  inputBinding:
    position: 4
  type: string
- doc: Converts the Hapcut2 final file to a VCF file using the original SNP file provided
    to Hapcut2
  id: hap_cut_to_vcf
  inputBinding:
    position: 5
  type: string
- doc: Converts Assemblytics to a VCF file
  id: convert_assembly_tics
  inputBinding:
    position: 6
  type: string
