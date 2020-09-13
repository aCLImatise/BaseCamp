version 1.0

task RBetaDiversitypy {
  input {
    Boolean? debug
    String? var_exp
    String? distance_methods
    File? r_data
    File? matrix_outdir
    File? html
    File? log_file
  }
  command <<<
    r_beta_diversity_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(var_exp) then ("--varExp " +  '"' + var_exp + '"') else ""} \
      ~{if defined(distance_methods) then ("--distance-methods " +  '"' + distance_methods + '"') else ""} \
      ~{if defined(r_data) then ("--rdata " +  '"' + r_data + '"') else ""} \
      ~{if defined(matrix_outdir) then ("--matrix-outdir " +  '"' + matrix_outdir + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    debug: "Keep temporary files to debug program."
    var_exp: "The experiment variable you want to analyse."
    distance_methods: "Comma separated values beta diversity methods\\navailable in Phyloseq (see https://www.bioconductor.or\\ng/packages/devel/bioc/manuals/phyloseq/man/phyloseq.pd\\nf). [Default: bray,cc,unifrac,wunifrac]."
    r_data: "The path of RData file containing a phyloseq object-\\nthe result of FROGS Phyloseq Import Data"
    matrix_outdir: "Path to output matrix file"
    html: "Path to store resulting html file. [Default:\\nbeta_diversity.html]"
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_matrix_outdir = "${in_matrix_outdir}"
    File out_log_file = "${in_log_file}"
  }
}