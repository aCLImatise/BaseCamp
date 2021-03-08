version 1.0

task LDBlockShow {
  input {
    Boolean? in_vcf
    File? str_output_file
    Boolean? region
    Boolean? sele_var
    Boolean? sub_pop
    Boolean? blocktype
    Boolean? ing_was
    Boolean? in_gff
    Boolean? block_cut
    Boolean? fix_block
    Int? mermin_snp_num
    String ld_block_show
  }
  command <<<
    LDBlockShow \
      ~{ld_block_show} \
      ~{if (in_vcf) then "-InVCF" else ""} \
      ~{if (str_output_file) then "-OutPut" else ""} \
      ~{if (region) then "-Region" else ""} \
      ~{if (sele_var) then "-SeleVar" else ""} \
      ~{if (sub_pop) then "-SubPop" else ""} \
      ~{if (blocktype) then "-BlockType" else ""} \
      ~{if (ing_was) then "-InGWAS" else ""} \
      ~{if (in_gff) then "-InGFF" else ""} \
      ~{if (block_cut) then "-BlockCut" else ""} \
      ~{if (fix_block) then "-FixBlock" else ""} \
      ~{if defined(mermin_snp_num) then ("-MerMinSNPNum " +  '"' + mermin_snp_num + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ldblockshow:1.38--he513fc3_0"
  }
  parameter_meta {
    in_vcf: "<str>      Input SNP VCF Format"
    str_output_file: "<str>      OutPut File of LD Blocks"
    region: "<str>      In One Region to show LD info svg Figure"
    sele_var: "<int>      Select statistic for deal. 1: D' 2: R^2 3/4:Both [1]"
    sub_pop: "<str>      SubGroup Sample File List[ALLsample]"
    blocktype: "<int>      method to detect Block [beta] [1]\\n1. Block by PLINK (Gabriel method)\\n2. Solid Spine of LD RR/D' 3. Blockcut with self-defined RR/D'\\n4. FixBlock by input blocks files 5. No Block"
    ing_was: "<str>      InPut GWAS Pvalue File(chr site Pvalue)"
    in_gff: "<str>      InPut GFF3 file to show Gene CDS and name"
    block_cut: "<float>    'Strong LD' cutoff and ratio for BlockType3[0.85:0.90]"
    fix_block: "<str>      Input fixed block region"
    mermin_snp_num: "merger color grids when SNPnumber over N[50]"
    ld_block_show: "-InVCF  <in.vcf.gz>  -OutPut <outPrefix>  -Region  chr1:10000-20000"
  }
  output {
    File out_stdout = stdout()
    File out_str_output_file = "${in_str_output_file}"
  }
}