version 1.0

task AktPca {
  input {
    Boolean? _output_vcf
    Boolean? output_fmt
    Boolean? regions_file
    Boolean? regions
    Boolean? targets_file
    Boolean? targets
    Boolean? force
    Boolean? samples_file
    Boolean? samples
    Boolean? weight
    Boolean? npca
    Boolean? alg
    Boolean? cov_def
    Boolean? extra
    Boolean? iterations
    Boolean? sv_file
    Boolean? assume_hom_ref
  }
  command <<<
    akt pca \
      ~{if (_output_vcf) then "--output" else ""} \
      ~{if (output_fmt) then "--outputfmt" else ""} \
      ~{if (regions_file) then "--regions-file" else ""} \
      ~{if (regions) then "--regions" else ""} \
      ~{if (targets_file) then "--targets-file" else ""} \
      ~{if (targets) then "--targets" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (samples_file) then "--samples-file" else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if (weight) then "--weight" else ""} \
      ~{if (npca) then "--npca" else ""} \
      ~{if (alg) then "--alg" else ""} \
      ~{if (cov_def) then "--covdef" else ""} \
      ~{if (extra) then "--extra" else ""} \
      ~{if (iterations) then "--iterations" else ""} \
      ~{if (sv_file) then "--svfile" else ""} \
      ~{if (assume_hom_ref) then "--assume-homref" else ""}
  >>>
  parameter_meta {
    _output_vcf: ":                   output vcf"
    output_fmt: ":                output vcf format"
    regions_file: ":             restrict to regions listed in a file"
    regions: ":                  chromosome region"
    targets_file: ":             similar to -R but streams rather than index-jumps"
    targets: ":                  similar to -r but streams rather than index-jumps"
    force: ":                    run pca without -R/-T/-F"
    samples_file: ":             list of samples, file"
    samples: ":                  list of samples"
    weight: ":                   VCF with weights for PCA"
    npca: ":                     first N principle components"
    alg: ":                      exact SVD (slow)"
    cov_def: ":                   definition of SVD matrix: 0=(G-mu) 1=(G-mu)/sqrt(p(1-p)) 2=diag-G(2-G) default(1)"
    extra: ":                    extra vectors for Red SVD"
    iterations: "number of power iterations (default 10 is sufficient)"
    sv_file: ":                   File containing singular values"
    assume_hom_ref: ":            Assume missing genotypes/sites are homozygous reference (useful for projecting a single sample)"
  }
  output {
    File out_stdout = stdout()
  }
}