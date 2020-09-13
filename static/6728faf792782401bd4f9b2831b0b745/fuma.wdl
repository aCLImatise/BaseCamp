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
    Boolean? file_bed_format
    Array[String] add_sample
    Boolean? samplealiasannotationalias
    String? format
    File? output_filename_stdout
    Boolean? v
    String output_format
  }
  command <<<
    fuma \
      ~{output_format} \
      ~{if (formats) then "--formats" else ""} \
      ~{if defined(matching_method) then ("--matching-method " +  '"' + matching_method + '"') else ""} \
      ~{if (strand_specific_matching) then "--strand-specific-matching" else ""} \
      ~{if (no_strand_specific_matching) then "--no-strand-specific-matching" else ""} \
      ~{if (accept_or_donor_order_specific_matching) then "--acceptor-donor-order-specific-matching" else ""} \
      ~{if (no_accept_or_donor_order_specific_matching) then "--no-acceptor-donor-order-specific-matching" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (file_bed_format) then "-a" else ""} \
      ~{if defined(add_sample) then ("--add-sample " +  '"' + add_sample + '"') else ""} \
      ~{if (samplealiasannotationalias) then "-l" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(output_filename_stdout) then ("--output " +  '"' + output_filename_stdout + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    formats: "show accepted dataset formats"
    matching_method: "The used method to match two gene sets. Overlap\\nmatches when two gene set have one or more genes\\noverlapping. Subset matches when one gene set is a\\nsubset of the other. EGM is exact gene matching; all\\ngenes in both sets need to be identical to match."
    strand_specific_matching: "Consider fusion genes distinct when the breakpoints\\nhave different strands: (A<-,B<-) != (->A,B<-);\\ndefault"
    no_strand_specific_matching: "Consider fusion genes identical when the breakpoints\\nhave different strands: (A<-,B<-) == (->A,B<-)"
    accept_or_donor_order_specific_matching: "Consider fusion genes distinct when the donor and\\nacceptor sites are swapped: (A,B) != (B,A)"
    no_accept_or_donor_order_specific_matching: "Consider fusion genes identical when the donor and\\nacceptor sites are swapped: (A,B) == (B,A); default"
    verbose: "increase output verbosity"
    file_bed_format: "[ADD_GENE_ANNOTATION [ADD_GENE_ANNOTATION ...]], --add-gene-annotation [ADD_GENE_ANNOTATION [ADD_GENE_ANNOTATION ...]]\\nannotation_alias:filename * file in BED format"
    add_sample: "sample_alias:format:filename (available formats: fuma\\n--formats)"
    samplealiasannotationalias: "[LINK_SAMPLE_TO_ANNOTATION [LINK_SAMPLE_TO_ANNOTATION ...]], --link-sample-to-annotation [LINK_SAMPLE_TO_ANNOTATION [LINK_SAMPLE_TO_ANNOTATION ...]]\\nsample_alias:annotation_alias"
    format: ""
    output_filename_stdout: "output filename; '-' for stdout"
    v: ""
    output_format: "-g LONG_GENE_SIZE, --long-gene-size LONG_GENE_SIZE"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_stdout = "${in_output_filename_stdout}"
  }
}