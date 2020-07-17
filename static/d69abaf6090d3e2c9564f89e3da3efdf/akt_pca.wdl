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
      ~{true="--output" false="" _output_vcf} \
      ~{true="--outputfmt" false="" output_fmt} \
      ~{true="--regions-file" false="" regions_file} \
      ~{true="--regions" false="" regions} \
      ~{true="--targets-file" false="" targets_file} \
      ~{true="--targets" false="" targets} \
      ~{true="--force" false="" force} \
      ~{true="--samples-file" false="" samples_file} \
      ~{true="--samples" false="" samples} \
      ~{true="--weight" false="" weight} \
      ~{true="--npca" false="" npca} \
      ~{true="--alg" false="" alg} \
      ~{true="--covdef" false="" cov_def} \
      ~{true="--extra" false="" extra} \
      ~{true="--iterations" false="" iterations} \
      ~{true="--svfile" false="" sv_file} \
      ~{true="--assume-homref" false="" assume_hom_ref}
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
}