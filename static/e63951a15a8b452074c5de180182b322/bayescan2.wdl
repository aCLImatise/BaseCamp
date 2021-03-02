version 1.0

task Bayescan2 {
  input {
    File? optional_input_file
    Boolean? snp
    File? od
    File? output_file_prefix
    Boolean? fstat
    Int? number_outputted_iterations
    Int? thin
    Int? nbp
    Int? pilot
    Int? burn
    Int? pr_odds
    Int? lb_fis
    Int? hb_fis
    Boolean? beta_fis
    Int? m_fis
    Int? sd_fis
    Int? aflp_pc
    File? out_pilot
    File? out_freq
    String alleles_dot_txt
  }
  command <<<
    bayescan2 \
      ~{alleles_dot_txt} \
      ~{if defined(optional_input_file) then ("-d " +  '"' + optional_input_file + '"') else ""} \
      ~{if (snp) then "-snp" else ""} \
      ~{if (od) then "-od" else ""} \
      ~{if defined(output_file_prefix) then ("-o " +  '"' + output_file_prefix + '"') else ""} \
      ~{if (fstat) then "-fstat" else ""} \
      ~{if defined(number_outputted_iterations) then ("-n " +  '"' + number_outputted_iterations + '"') else ""} \
      ~{if defined(thin) then ("-thin " +  '"' + thin + '"') else ""} \
      ~{if defined(nbp) then ("-nbp " +  '"' + nbp + '"') else ""} \
      ~{if defined(pilot) then ("-pilot " +  '"' + pilot + '"') else ""} \
      ~{if defined(burn) then ("-burn " +  '"' + burn + '"') else ""} \
      ~{if defined(pr_odds) then ("-pr_odds " +  '"' + pr_odds + '"') else ""} \
      ~{if defined(lb_fis) then ("-lb_fis " +  '"' + lb_fis + '"') else ""} \
      ~{if defined(hb_fis) then ("-hb_fis " +  '"' + hb_fis + '"') else ""} \
      ~{if (beta_fis) then "-beta_fis" else ""} \
      ~{if defined(m_fis) then ("-m_fis " +  '"' + m_fis + '"') else ""} \
      ~{if defined(sd_fis) then ("-sd_fis " +  '"' + sd_fis + '"') else ""} \
      ~{if defined(aflp_pc) then ("-aflp_pc " +  '"' + aflp_pc + '"') else ""} \
      ~{if (out_pilot) then "-out_pilot" else ""} \
      ~{if (out_freq) then "-out_freq" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    optional_input_file: "Optional input file containing list of loci to discard"
    snp: "Use SNP genotypes matrix"
    od: ".        Output file directory, default is the same as program file"
    output_file_prefix: "Output file prefix, default is input file without the extension"
    fstat: "Only estimate F-stats (no selection)"
    number_outputted_iterations: "Number of outputted iterations, default is 5000"
    thin: "Thinning interval size, default is 10"
    nbp: "Number of pilot runs, default is 20"
    pilot: "Length of pilot runs, default is 5000"
    burn: "Burn-in length, default is 50000"
    pr_odds: "Prior odds for the neutral model, default is 10"
    lb_fis: "Lower bound for uniform prior on Fis (dominant data), default is 0"
    hb_fis: "Higher bound for uniform prior on Fis (dominant data), default is 1"
    beta_fis: "Optional beta prior for Fis (dominant data, m_fis and sd_fis need to be set)"
    m_fis: "Optional mean for beta prior on Fis (dominant data with -beta_fis)"
    sd_fis: "Optional std. deviation for beta prior on Fis (dominant data with -beta_fis)"
    aflp_pc: "Threshold for the recessive genotype as a fraction of maximum band intensity, default is 0.1"
    out_pilot: "Optional output file for pilot runs"
    out_freq: "Optional output file for allele frequencies"
    alleles_dot_txt: "Name of the genotypes data input file "
  }
  output {
    File out_stdout = stdout()
    File out_od = "${in_od}"
    File out_out_pilot = "${in_out_pilot}"
    File out_out_freq = "${in_out_freq}"
  }
}