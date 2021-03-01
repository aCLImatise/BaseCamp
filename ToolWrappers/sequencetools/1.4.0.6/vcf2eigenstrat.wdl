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
  runtime {
    docker: "None"
  }
  parameter_meta {
    snp_file: "specify an Eigenstrat SNP file with the positions and\\nalleles of a reference set. If this option is given,\\nonly positions that are both in the SNP file and in\\nthe VCF will be output. Without this option, all\\nsites in the VCF will be output. WARNING: Sites that\\nare not in the VCF will not be output, and this is\\nnew behaviour. Previously one could specify that they\\nwill be output as missing or hom-ref, but that\\nfeature was recently removed. I plan to implement\\nthis behaviour in the future in a new\\neigenstrat-merging tool."
    out_prefix: "specify the filenames for the EigenStrat SNP and IND\\nfile outputs: <FILE_PREFIX>.snp.txt and\\n<FILE_PREFIX>.ind.txt\\n"
  }
  output {
    File out_stdout = stdout()
    File out_snp_file = "${in_snp_file}"
  }
}