class: CommandLineTool
id: MACARON.cwl
inputs:
- id: in_file
  doc: Full path of the input VCF file.
  type: string
  inputBinding:
    prefix: --infile
- id: outfile
  doc: 'Path of the output txt file (Default Output file: MACARON_output.txt)'
  type: string
  inputBinding:
    prefix: --outfile
- id: fields
  doc: "Single field name or comma-seperated ',' multiple field names can be given.\
    \ Field name should be given according to the (INFO) field header of the input\
    \ vcf file. Example: -f Func.refGene,ExonicFunc.refGene,Gene .refGene,1000g2015aug_all,ExAC_ALL,ExAC_EAS,clinvar_20\
    \ 161128,gnomAD_exome_ALL,gnomAD_genome_ALL,EFF,CSQ"
  type: string
  inputBinding:
    prefix: --fields
- id: g_atk
  doc: Indicate the full path to GATK jar file
  type: string
  inputBinding:
    prefix: --GATK
- id: hg_ref
  doc: Indicate the full path to the reference genome fasta file
  type: string
  inputBinding:
    prefix: --HG_REF
- id: snp_eff
  doc: Indicate the full path to SnpEff jar file
  type: string
  inputBinding:
    prefix: --SNPEFF
- id: snp_eff_hg
  doc: Indicate SnpEff human genome annotation database version
  type: string
  inputBinding:
    prefix: --SNPEFF_HG
- id: gatk4
  doc: Add this option when using GATK versions >= 4.0
  type: boolean
  inputBinding:
    prefix: --gatk4
- id: verbosity
  doc: Use to print verbosity (Mostly GATK/SNPEFF output)
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: eco_friendly
  doc: Save a thread, but you won't be able to stare at the fabulous animation while
    waiting ...
  type: boolean
  inputBinding:
    prefix: --eco_friendly
outputs: []
cwlVersion: v1.1
baseCommand:
- MACARON
