version 1.0

task FamSeq {
  input {
    Boolean? vcf_file
    Boolean? lk_file
    File? lk_type
    Boolean? ped_file
    File? name_output_file
    Boolean? method
    Boolean? m_rate
    File? only_record_position
    File? record_position_output
    Boolean? genopro_bn
    Boolean? genopro_bk
    Boolean? genopro_bxn
    Boolean? genopro_bx_k
    Boolean? num_burnin
    Boolean? num_rep
    String input_type
  }
  command <<<
    FamSeq \
      ~{input_type} \
      ~{if (vcf_file) then "-vcfFile" else ""} \
      ~{if (lk_file) then "-lkFile" else ""} \
      ~{if defined(lk_type) then ("-lkType " +  '"' + lk_type + '"') else ""} \
      ~{if (ped_file) then "-pedFile" else ""} \
      ~{if (name_output_file) then "-output" else ""} \
      ~{if (method) then "-method" else ""} \
      ~{if (m_rate) then "-mRate" else ""} \
      ~{if (only_record_position) then "-v" else ""} \
      ~{if (record_position_output) then "-a" else ""} \
      ~{if (genopro_bn) then "-genoProbN" else ""} \
      ~{if (genopro_bk) then "-genoProbK" else ""} \
      ~{if (genopro_bxn) then "-genoProbXN" else ""} \
      ~{if (genopro_bx_k) then "-genoProbXK" else ""} \
      ~{if (num_burnin) then "-numBurnIn" else ""} \
      ~{if (num_rep) then "-numRep" else ""}
  >>>
  parameter_meta {
    vcf_file: "The name of input vcf file."
    lk_file: "The name of input likelihood only format file."
    lk_type: "likelihood type stored in the likelihood only format file. n:normal(default); log10: log10 scaled; ln: ln scaled; PS: phred scaled."
    ped_file: "The name of the file storing the pedigree information."
    name_output_file: "The name of output file"
    method: "Choose the method used in variant calling. 1(default): Bayesian network; 2: Elston-Stewart algorithm; 3: MCMC."
    m_rate: "Mutation rate. The default value is 1e-7"
    only_record_position: "Only record the position at which the genotype is not RR in the output file. (R: reference allele, A: alternative allele)."
    record_position_output: "Record all the position in the output file."
    genopro_bn: "Genotype probability of three kinds of genotype for autosome in population (Pr(G)) when the variant is not in dbSNP. The default value is:  0.9985, 0.001 and 0.0005. The dbSNP position should be provided in column ID in input vcf file."
    genopro_bk: "Genotype probability of three kinds of genotype for autosome in population (Pr(G)) when the variant is in dbSNP. The default value is: 0.45, 0.1 and 0.45."
    genopro_bxn: "Genotype probability of two kinds of genotype for chromosome X for male in population (Pr(G)) when the variant is not in dbSNP. The default value is: 0.999 and 0.001."
    genopro_bx_k: "Genotype probability of two kinds of genotype for chromosome X for male in population (Pr(G)) when the variant is in dbSNP. The default value is: 0.5 and 0.5."
    num_burnin: "Number of burn in when the user chooses the MCMC method. The default value is 1,000n, where n is the number of individuals in the pedigree."
    num_rep: "Number of iteration times when the user chooses MCMC method. The default value is 20,000n."
    input_type: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
    File out_only_record_position = "${in_only_record_position}"
    File out_record_position_output = "${in_record_position_output}"
  }
}