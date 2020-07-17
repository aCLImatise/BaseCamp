version 1.0

task Neptune {
  input {
    Array[String] inclusion
    Array[String] exclusion
    String? directory_place_output
    String? km_er
    String? organization
    String? filter_percent
    String? filter_length
    String? seed_size
    Array[String] reference
    String? reference_size
    String? rate
    String? in_hits
    String? ex_hits
    String? gap
    Int? size
    String? gc_content
    String? confidence
    String? parallelization
    Boolean? drmaa
    String? default_specification
    String? count_specification
    String? aggregate_specification
    String? extract_specification
    String? database_specification
    String? filter_specification
    String? consolidate_specification
    String neptune_cond_a
  }
  command <<<
    neptune \
      ~{neptune_cond_a} \
      ~{if defined(inclusion) then ("--inclusion " +  '"' + inclusion + '"') else ""} \
      ~{if defined(exclusion) then ("--exclusion " +  '"' + exclusion + '"') else ""} \
      ~{if defined(directory_place_output) then ("--output " +  '"' + directory_place_output + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(organization) then ("--organization " +  '"' + organization + '"') else ""} \
      ~{if defined(filter_percent) then ("--filter-percent " +  '"' + filter_percent + '"') else ""} \
      ~{if defined(filter_length) then ("--filter-length " +  '"' + filter_length + '"') else ""} \
      ~{if defined(seed_size) then ("--seed-size " +  '"' + seed_size + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(reference_size) then ("--reference-size " +  '"' + reference_size + '"') else ""} \
      ~{if defined(rate) then ("--rate " +  '"' + rate + '"') else ""} \
      ~{if defined(in_hits) then ("--inhits " +  '"' + in_hits + '"') else ""} \
      ~{if defined(ex_hits) then ("--exhits " +  '"' + ex_hits + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(gc_content) then ("--gc-content " +  '"' + gc_content + '"') else ""} \
      ~{if defined(confidence) then ("--confidence " +  '"' + confidence + '"') else ""} \
      ~{if defined(parallelization) then ("--parallelization " +  '"' + parallelization + '"') else ""} \
      ~{true="--drmaa" false="" drmaa} \
      ~{if defined(default_specification) then ("--default-specification " +  '"' + default_specification + '"') else ""} \
      ~{if defined(count_specification) then ("--count-specification " +  '"' + count_specification + '"') else ""} \
      ~{if defined(aggregate_specification) then ("--aggregate-specification " +  '"' + aggregate_specification + '"') else ""} \
      ~{if defined(extract_specification) then ("--extract-specification " +  '"' + extract_specification + '"') else ""} \
      ~{if defined(database_specification) then ("--database-specification " +  '"' + database_specification + '"') else ""} \
      ~{if defined(filter_specification) then ("--filter-specification " +  '"' + filter_specification + '"') else ""} \
      ~{if defined(consolidate_specification) then ("--consolidate-specification " +  '"' + consolidate_specification + '"') else ""}
  >>>
  parameter_meta {
    inclusion: "The inclusion targets in FASTA format."
    exclusion: "The exclusion targets in FASTA format."
    directory_place_output: "The directory to place all output."
    km_er: "The size of the k-mers."
    organization: "The degree of k-mer organization in the output files. This exploits the four-character alphabet of nucleotides to produce several k-mer output files, with all k-mers in a file beginning with the same short sequence of nucleotides. This parameter determines the number of nucleotides to use and will produce 4^X output files, where X is the number of nucleotides specified by this parameter. The number of output files directly corresponds to the amount of parallelization in the k-mer aggregation process."
    filter_percent: "The maximum percent identity of a candidate signature with an exclusion hit before discarding the signature. When both the filtered percent and filtered length limits are exceed, the signature is discarded."
    filter_length: "The maximum shared fractional length of an exclusion target alignment with a candidate signature before discarding the signature. When both the filtered percent and filtered length limits are exceed, the signature is discarded."
    seed_size: "The seed size used during alignment."
    reference: "The FASTA reference from which to extract signatures."
    reference_size: "The estimated total size in nucleotides of the reference. This will be calculated if not specified."
    rate: "The probability of a mutation or error at an arbitrary position. The default value is 0.01."
    in_hits: "The minimum number of inclusion targets that must contain a k-mer observed in the reference to begin or continue building candidate signatures. This will be calculated if not specified."
    ex_hits: "The maximum allowable number of exclusion targets that may contain a k-mer observed in the reference before terminating the construction of a candidate signature. This will be calculated if not specified."
    gap: "The maximum number of consecutive k-mers observed in the reference during signature candidate construction that fail to have enough inclusion hits before terminating the construction of a candidate signature. This will be calculated if not specified and is determined from the size of k and the rate."
    size: "The minimum size of all reported candidate signatures. Identified candidate signatures shorter than this value will be discard."
    gc_content: "The average GC-content of all inclusion and exclusion targets. This will be calculated from inclusion and exclusion targets if not specified."
    confidence: "The statistical confidence level in decision making involving probabilities when producing candidate signatures."
    parallelization: "The number of processes to run simultaneously. Note that this is only applicable when running Neptune in non-DRMAA mode (default)."
    drmaa: "Whether or not to run Neptune in DRMAA-mode and attempt to schedule jobs through DRMAA. This will require setting up DRMAA in advance."
    default_specification: "The default DRMAA parameters."
    count_specification: "The DRMAA parameters specific to k-mer counting."
    aggregate_specification: "The DRMAA specific parameters specific to k-mer aggregation."
    extract_specification: "The DRMAA parameters specific to candidate signature extraction."
    database_specification: "The DRMAA parameters specific to database construction and querying."
    filter_specification: "The DRMAA parameters specific to candidate signature filtering."
    consolidate_specification: "The DRMAA parameters specific to filtered signature consolidation."
    neptune_cond_a: ""
  }
}