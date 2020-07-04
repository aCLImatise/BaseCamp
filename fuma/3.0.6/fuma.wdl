version 1.0

task Fuma {
  input {
    Boolean? formats
    String? matching_method
    Boolean? strand_specific_matching
    Boolean? no_strand_specific_matching
    Boolean? accept_or_donor_order_specific_matching
    Boolean? no_accept_or_donor_order_specific_matching
    Boolean? verbose
    Boolean? annotationaliasfilename_file_bed
    Array[String] add_sample
    Boolean? _samplealiasannotationalias
    String? format
    String? long_gene_size
    String? output_filename_stdout
    Boolean? v
  }
  command <<<
    fuma \
      ~{true="--formats" false="" formats} \
      ~{if defined(matching_method) then ("--matching-method " +  '"' + matching_method + '"') else ""} \
      ~{true="--strand-specific-matching" false="" strand_specific_matching} \
      ~{true="--no-strand-specific-matching" false="" no_strand_specific_matching} \
      ~{true="--acceptor-donor-order-specific-matching" false="" accept_or_donor_order_specific_matching} \
      ~{true="--no-acceptor-donor-order-specific-matching" false="" no_accept_or_donor_order_specific_matching} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-a" false="" annotationaliasfilename_file_bed} \
      ~{if defined(add_sample) then ("--add-sample " +  '"' + add_sample + '"') else ""} \
      ~{true="-l" false="" _samplealiasannotationalias} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(long_gene_size) then ("--long-gene-size " +  '"' + long_gene_size + '"') else ""} \
      ~{if defined(output_filename_stdout) then ("--output " +  '"' + output_filename_stdout + '"') else ""} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    formats: "show accepted dataset formats"
    matching_method: "The used method to match two gene sets. Overlap matches when two gene set have one or more genes overlapping. Subset matches when one gene set is a subset of the other. EGM is exact gene matching; all genes in both sets need to be identical to match."
    strand_specific_matching: "Consider fusion genes distinct when the breakpoints have different strands: (A<-,B<-) != (->A,B<-); default"
    no_strand_specific_matching: "Consider fusion genes identical when the breakpoints have different strands: (A<-,B<-) == (->A,B<-)"
    accept_or_donor_order_specific_matching: "Consider fusion genes distinct when the donor and acceptor sites are swapped: (A,B) != (B,A)"
    no_accept_or_donor_order_specific_matching: "Consider fusion genes identical when the donor and acceptor sites are swapped: (A,B) == (B,A); default"
    verbose: "increase output verbosity"
    annotationaliasfilename_file_bed: "[ADD_GENE_ANNOTATION [ADD_GENE_ANNOTATION ...]], --add-gene-annotation [ADD_GENE_ANNOTATION [ADD_GENE_ANNOTATION ...]] annotation_alias:filename * file in BED format"
    add_sample: "sample_alias:format:filename (available formats: fuma --formats)"
    _samplealiasannotationalias: "[LINK_SAMPLE_TO_ANNOTATION [LINK_SAMPLE_TO_ANNOTATION ...]], --link-sample-to-annotation [LINK_SAMPLE_TO_ANNOTATION [LINK_SAMPLE_TO_ANNOTATION ...]] sample_alias:annotation_alias"
    format: "Output-format"
    long_gene_size: "Gene-name based matching is more sensitive to long genes. This is the gene size used to mark fusion genes spanning a 'long gene' as reported the output. Use 0 to disable this feature."
    output_filename_stdout: "output filename; '-' for stdout"
    v: ""
  }
}