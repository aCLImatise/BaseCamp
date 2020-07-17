class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/MACARON.cwl
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
- id: hg_ref
  doc: Indicate the full path to the reference genome fasta file
  type: string
  inputBinding:
    prefix: --HG_REF
- id: g_atk
  doc: You can use this option to directly indicate the full path to the GATK program
    (gatk wrapper or .jar)
  type: string
  inputBinding:
    prefix: --GATK
- id: java_options
  doc: 'You can use this option to specify java arguments required by GATK (default:
    --JAVA-OPTIONS "-Xmx4G")'
  type: string
  inputBinding:
    prefix: --JAVA_OPTIONS
- id: snp_eff
  doc: You can use this option to directly indicate the full path to the snpEff jar
    or wrapper
  type: string
  inputBinding:
    prefix: --SNPEFF
- id: snp_eff_hg
  doc: Indicate SnpEff human genome annotation database version
  type: string
  inputBinding:
    prefix: --SNPEFF_HG
- id: verbosity
  doc: Use to print verbosity (Mostly GATK/SNPEFF output)
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: add_anim
  doc: Add animation while running (looks good but costs a thread)
  type: boolean
  inputBinding:
    prefix: --add_anim
- id: keep_tmp
  doc: Keep temporary files in the directory tmp_macaron, at the same location than
    the output file.
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: g_atk_four_previous
  doc: Use this option if you are using a version of gatk 4 older than gatk 4.1.4.1
  type: boolean
  inputBinding:
    prefix: --gatk4_previous
outputs: []
cwlVersion: v1.1
baseCommand:
- MACARON
