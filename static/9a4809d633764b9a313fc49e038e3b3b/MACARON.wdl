version 1.0

task MACARON {
  input {
    String? script
    File? in_file
    File? outfile
    File? fields
    File? hg_ref
    Int? java_options
    File? snp_eff
    String? snp_eff_hg
    Boolean? verbosity
    Boolean? add_anim
    File? keep_tmp
    Boolean? g_atk_four_previous
    File file
  }
  command <<<
    MACARON \
      ~{file} \
      ~{if defined(script) then ("-Script " +  '"' + script + '"') else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if defined(hg_ref) then ("--HG_REF " +  '"' + hg_ref + '"') else ""} \
      ~{if defined(java_options) then ("--JAVA_OPTIONS " +  '"' + java_options + '"') else ""} \
      ~{if defined(snp_eff) then ("--SNPEFF " +  '"' + snp_eff + '"') else ""} \
      ~{if defined(snp_eff_hg) then ("--SNPEFF_HG " +  '"' + snp_eff_hg + '"') else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (add_anim) then "--add_anim" else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if (g_atk_four_previous) then "--gatk4_previous" else ""}
  >>>
  parameter_meta {
    script: "identify SnpClusters (SNPs within the same genetic codon)"
    in_file: "Full path of the input VCF file."
    outfile: "Path of the output txt file (Default Output file:\\nMACARON_output.txt)"
    fields: "Single field name or comma-seperated ',' multiple\\nfield names can be given. Field name should be given\\naccording to the (INFO) field header of the input vcf\\nfile. Example: -f Func.refGene,ExonicFunc.refGene,Gene\\n.refGene,1000g2015aug_all,ExAC_ALL,ExAC_EAS,clinvar_20\\n161128,gnomAD_exome_ALL,gnomAD_genome_ALL,EFF,CSQ"
    hg_ref: "Indicate the full path to the reference genome fasta"
    java_options: "You can use this option to specify java arguments\\nrequired by GATK (default: --JAVA-OPTIONS \\\"-Xmx4G\\\")"
    snp_eff: "You can use this option to directly indicate the full\\npath to the snpEff jar or wrapper"
    snp_eff_hg: "Indicate SnpEff human genome annotation database\\nversion"
    verbosity: "Use to print verbosity (Mostly GATK/SNPEFF output)"
    add_anim: "Add animation while running (looks good but costs a\\nthread)"
    keep_tmp: "Keep temporary files in the directory tmp_macaron, at\\nthe same location than the output file."
    g_atk_four_previous: "Use this option if you are using a version of gatk 4\\nolder than gatk 4.1.4.1\\n"
    file: "--GATK GATK_PATH      You can use this option to directly indicate the full"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_keep_tmp = "${in_keep_tmp}"
  }
}