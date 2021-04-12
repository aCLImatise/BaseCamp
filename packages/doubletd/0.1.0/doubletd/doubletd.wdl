version 1.0

task Doubletd {
  input {
    File? input_total
    File? input_alternate
    Float? delta
    Float? beta
    String? mu_hetero
    String? mu_hom
    String? alpha_fp
    String? alpha_fn
    File? output_file
    Boolean? no_verbose
    Boolean? binomial
    String? prec
    Boolean? missing
  }
  command <<<
    doubletd \
      ~{if defined(input_total) then ("--inputTotal " +  '"' + input_total + '"') else ""} \
      ~{if defined(input_alternate) then ("--inputAlternate " +  '"' + input_alternate + '"') else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(mu_hetero) then ("--mu_hetero " +  '"' + mu_hetero + '"') else ""} \
      ~{if defined(mu_hom) then ("--mu_hom " +  '"' + mu_hom + '"') else ""} \
      ~{if defined(alpha_fp) then ("--alpha_fp " +  '"' + alpha_fp + '"') else ""} \
      ~{if defined(alpha_fn) then ("--alpha_fn " +  '"' + alpha_fn + '"') else ""} \
      ~{if defined(output_file) then ("--outputfile " +  '"' + output_file + '"') else ""} \
      ~{if (no_verbose) then "--noverbose" else ""} \
      ~{if (binomial) then "--binomial" else ""} \
      ~{if defined(prec) then ("--prec " +  '"' + prec + '"') else ""} \
      ~{if (missing) then "--missing" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/doubletd:0.1.0--py_0"
  }
  parameter_meta {
    input_total: "csv file with a table of total read counts for each\\nposition in each cell"
    input_alternate: "csv file with a table of alternate read counts for\\neach position in each cell"
    delta: "expected doublet rate [0.1]"
    beta: "allelic dropout (ADO) rate [0.05]"
    mu_hetero: "heterozygous mutation rate [None]"
    mu_hom: "homozygous mutation rate [None]"
    alpha_fp: "copy false positive error rate [None]"
    alpha_fn: "copy false negative error rate [None]"
    output_file: "output file name"
    no_verbose: "do not output statements from internal solvers\\n[default is false]"
    binomial: "use binomial distribution for read count model\\n[default is false]"
    prec: "precision for beta-binomial distribution [None]"
    missing: "use missing data in the model? [No]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}