version 1.0

task Maker2zff {
  input {
    Float? fraction_confirmed_est
    Float? fraction_an_est
    Float? fraction_exons_any
    Int? fraction_confirmed_abinitio
    Int? fraction_an_abinitio
    Int? min_length_protein
    Int? max_aed_allow
    Boolean? no_filtering_accept
  }
  command <<<
    maker2zff \
      ~{if defined(fraction_confirmed_est) then ("-c " +  '"' + fraction_confirmed_est + '"') else ""} \
      ~{if defined(fraction_an_est) then ("-e " +  '"' + fraction_an_est + '"') else ""} \
      ~{if defined(fraction_exons_any) then ("-o " +  '"' + fraction_exons_any + '"') else ""} \
      ~{if defined(fraction_confirmed_abinitio) then ("-a " +  '"' + fraction_confirmed_abinitio + '"') else ""} \
      ~{if defined(fraction_an_abinitio) then ("-t " +  '"' + fraction_an_abinitio + '"') else ""} \
      ~{if defined(min_length_protein) then ("-l " +  '"' + min_length_protein + '"') else ""} \
      ~{if defined(max_aed_allow) then ("-x " +  '"' + max_aed_allow + '"') else ""} \
      ~{if (no_filtering_accept) then "-n" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0"
  }
  parameter_meta {
    fraction_confirmed_est: "The fraction of splice sites confirmed by an EST alignment, default 0.5"
    fraction_an_est: "The fraction of exons that overlap an EST alignment, default 0.5"
    fraction_exons_any: "The fraction of exons that overlap any evidence (EST or Protein), default 0.5"
    fraction_confirmed_abinitio: "The fraction of splice sites confirmed by an ab-initio prediction, default 0"
    fraction_an_abinitio: "The fraction of exons that overlap an ab-initio prediction, default 0"
    min_length_protein: "The min length of the protein sequence produced by the mRNA"
    max_aed_allow: "Max AED to allow 0.5 is default"
    no_filtering_accept: "No filtering.  Accept all."
  }
  output {
    File out_stdout = stdout()
  }
}