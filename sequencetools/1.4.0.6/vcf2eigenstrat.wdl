version 1.0

task Vcf2eigenstrat {
  input {
    File? snp_file
    File? out_prefix
  }
  command <<<
    vcf2eigenstrat \
      ~{if defined(snp_file) then ("--snpFile " +  '"' + snp_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--outPrefix " +  '"' + out_prefix + '"') else ""}
  >>>
  parameter_meta {
    snp_file: "specify an Eigenstrat SNP file with the positions and alleles of a reference set. If this option is given, only positions that are both in the SNP file and in the VCF will be output. Without this option, all sites in the VCF will be output. WARNING: Sites that are not in the VCF will not be output, and this is new behaviour. Previously one could specify that they will be output as missing or hom-ref, but that feature was recently removed. I plan to implement this behaviour in the future in a new eigenstrat-merging tool."
    out_prefix: "specify the filenames for the EigenStrat SNP and IND file outputs: <FILE_PREFIX>.snp.txt and <FILE_PREFIX>.ind.txt"
  }
}