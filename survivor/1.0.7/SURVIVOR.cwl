class: CommandLineTool
id: SURVIVOR.cwl
inputs:
- id: sims_v
  doc: Simulates SVs and SNPs on a reference genome.
  type: string
  inputBinding:
    position: 0
- id: scan_reads
  doc: Obtain error profiles form mapped reads for simulation.
  type: string
  inputBinding:
    position: 1
- id: sim_reads
  doc: Simulates long reads (Pacio or ONT).
  type: string
  inputBinding:
    position: 2
- id: eval
  doc: Evaluates a VCF file after SV calling over simulated data.
  type: string
  inputBinding:
    position: 3
- id: filter
  doc: Filter a vcf file based on size and/or regions to ignore
  type: string
  inputBinding:
    position: 0
- id: stats
  doc: Report multipe stats over a VCF file
  type: string
  inputBinding:
    position: 1
- id: comp_mummer
  doc: Annotates a VCF file with the breakpoints found with MUMMer (Show-diff).
  type: string
  inputBinding:
    position: 2
- id: bin_cov
  doc: Bins coverage vector to a bed file to filter SVs in low MQ regions
  type: string
  inputBinding:
    position: 0
- id: vcf_to_bed
  doc: Converts a VCF file to a bed file
  type: string
  inputBinding:
    position: 1
- id: bed_to_vcf
  doc: 'Converts a bed file to a VCF file '
  type: string
  inputBinding:
    position: 2
- id: smap_to_vcf
  doc: Converts the smap file to a VCF file (beta version)
  type: string
  inputBinding:
    position: 3
- id: bed_pe_to_vcf
  doc: Converts a bedpe file ot a VCF file (beta version)
  type: string
  inputBinding:
    position: 4
- id: hap_cut_to_vcf
  doc: Converts the Hapcut2 final file to a VCF file using the original SNP file provided
    to Hapcut2
  type: string
  inputBinding:
    position: 5
- id: convert_assembly_tics
  doc: Converts Assemblytics to a VCF file
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- SURVIVOR
