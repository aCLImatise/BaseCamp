class: CommandLineTool
id: MACARON.cwl
inputs:
- id: in_script
  doc: identify SnpClusters (SNPs within the same genetic codon)
  type: string?
  inputBinding:
    prefix: -Script
- id: in_in_file
  doc: Full path of the input VCF file.
  type: File?
  inputBinding:
    prefix: --infile
- id: in_outfile
  doc: "Path of the output txt file (Default Output file:\nMACARON_output.txt)"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_fields
  doc: "Single field name or comma-seperated ',' multiple\nfield names can be given.\
    \ Field name should be given\naccording to the (INFO) field header of the input\
    \ vcf\nfile. Example: -f Func.refGene,ExonicFunc.refGene,Gene\n.refGene,1000g2015aug_all,ExAC_ALL,ExAC_EAS,clinvar_20\n\
    161128,gnomAD_exome_ALL,gnomAD_genome_ALL,EFF,CSQ"
  type: File?
  inputBinding:
    prefix: --fields
- id: in_hg_ref
  doc: Indicate the full path to the reference genome fasta
  type: File?
  inputBinding:
    prefix: --HG_REF
- id: in_java_options
  doc: "You can use this option to specify java arguments\nrequired by GATK (default:\
    \ --JAVA-OPTIONS \"-Xmx4G\")"
  type: long?
  inputBinding:
    prefix: --JAVA_OPTIONS
- id: in_snp_eff
  doc: "You can use this option to directly indicate the full\npath to the snpEff\
    \ jar or wrapper"
  type: File?
  inputBinding:
    prefix: --SNPEFF
- id: in_snp_eff_hg
  doc: "Indicate SnpEff human genome annotation database\nversion"
  type: string?
  inputBinding:
    prefix: --SNPEFF_HG
- id: in_verbosity
  doc: Use to print verbosity (Mostly GATK/SNPEFF output)
  type: boolean?
  inputBinding:
    prefix: --verbosity
- id: in_add_anim
  doc: "Add animation while running (looks good but costs a\nthread)"
  type: boolean?
  inputBinding:
    prefix: --add_anim
- id: in_keep_tmp
  doc: "Keep temporary files in the directory tmp_macaron, at\nthe same location than\
    \ the output file."
  type: File?
  inputBinding:
    prefix: --keep_tmp
- id: in_g_atk_four_previous
  doc: "Use this option if you are using a version of gatk 4\nolder than gatk 4.1.4.1\n"
  type: boolean?
  inputBinding:
    prefix: --gatk4_previous
- id: in_file
  doc: --GATK GATK_PATH      You can use this option to directly indicate the full
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "Path of the output txt file (Default Output file:\nMACARON_output.txt)"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_keep_tmp
  doc: "Keep temporary files in the directory tmp_macaron, at\nthe same location than\
    \ the output file."
  type: File?
  outputBinding:
    glob: $(inputs.in_keep_tmp)
hints: []
cwlVersion: v1.1
baseCommand:
- MACARON
