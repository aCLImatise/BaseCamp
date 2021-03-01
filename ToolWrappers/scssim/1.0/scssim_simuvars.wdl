version 1.0

task ScssimSimuvars {
  input {
    File? ref
    File? snp
    File? var
    File? output_file_save
  }
  command <<<
    scssim simuvars \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(snp) then ("--snp " +  '"' + snp + '"') else ""} \
      ~{if defined(var) then ("--var " +  '"' + var + '"') else ""} \
      ~{if defined(output_file_save) then ("--output " +  '"' + output_file_save + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref: "reference file (.fasta)"
    snp: "SNP file containing the SNPs to be simulated [Default:null]"
    var: "variation file containing the genomic variations to be simulated [Default:null]"
    output_file_save: "output file (.fasta) to save generated sequences"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_save = "${in_output_file_save}"
  }
}