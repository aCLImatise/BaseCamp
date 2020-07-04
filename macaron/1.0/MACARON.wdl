version 1.0

task MACARON {
  input {
    String? in_file
    String? outfile
    String? fields
    String? hg_ref
    String? g_atk
    String? java_options
    String? snp_eff
    String? snp_eff_hg
    Boolean? verbosity
    Boolean? add_anim
    Boolean? keep_tmp
    Boolean? g_atk_four_previous
  }
  command <<<
    MACARON \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if defined(hg_ref) then ("--HG_REF " +  '"' + hg_ref + '"') else ""} \
      ~{if defined(g_atk) then ("--GATK " +  '"' + g_atk + '"') else ""} \
      ~{if defined(java_options) then ("--JAVA_OPTIONS " +  '"' + java_options + '"') else ""} \
      ~{if defined(snp_eff) then ("--SNPEFF " +  '"' + snp_eff + '"') else ""} \
      ~{if defined(snp_eff_hg) then ("--SNPEFF_HG " +  '"' + snp_eff_hg + '"') else ""} \
      ~{true="--verbosity" false="" verbosity} \
      ~{true="--add_anim" false="" add_anim} \
      ~{true="--keep_tmp" false="" keep_tmp} \
      ~{true="--gatk4_previous" false="" g_atk_four_previous}
  >>>
  parameter_meta {
    in_file: "Full path of the input VCF file."
    outfile: "Path of the output txt file (Default Output file: MACARON_output.txt)"
    fields: "Single field name or comma-seperated ',' multiple field names can be given. Field name should be given according to the (INFO) field header of the input vcf file. Example: -f Func.refGene,ExonicFunc.refGene,Gene .refGene,1000g2015aug_all,ExAC_ALL,ExAC_EAS,clinvar_20 161128,gnomAD_exome_ALL,gnomAD_genome_ALL,EFF,CSQ"
    hg_ref: "Indicate the full path to the reference genome fasta file"
    g_atk: "You can use this option to directly indicate the full path to the GATK program (gatk wrapper or .jar)"
    java_options: "You can use this option to specify java arguments required by GATK (default: --JAVA-OPTIONS \"-Xmx4G\")"
    snp_eff: "You can use this option to directly indicate the full path to the snpEff jar or wrapper"
    snp_eff_hg: "Indicate SnpEff human genome annotation database version"
    verbosity: "Use to print verbosity (Mostly GATK/SNPEFF output)"
    add_anim: "Add animation while running (looks good but costs a thread)"
    keep_tmp: "Keep temporary files in the directory tmp_macaron, at the same location than the output file."
    g_atk_four_previous: "Use this option if you are using a version of gatk 4 older than gatk 4.1.4.1"
  }
}