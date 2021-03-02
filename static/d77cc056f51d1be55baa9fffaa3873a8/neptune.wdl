version 1.0

task Neptune {
  input {
    Array[String] inclusion
    Array[String] exclusion
    Directory? directory_place_output
    Int? km_er
    Int? organization
    Int? filter_percent
    Int? filter_length
    Int? seed_size
    Array[String] reference
    Int? reference_size
    Float? rate
    Int? in_hits
    Int? ex_hits
    Int? gap
    Int? size
    String? gc_content
    String? confidence
    Int? parallelization
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
      ~{if (drmaa) then "--drmaa" else ""} \
      ~{if defined(default_specification) then ("--default-specification " +  '"' + default_specification + '"') else ""} \
      ~{if defined(count_specification) then ("--count-specification " +  '"' + count_specification + '"') else ""} \
      ~{if defined(aggregate_specification) then ("--aggregate-specification " +  '"' + aggregate_specification + '"') else ""} \
      ~{if defined(extract_specification) then ("--extract-specification " +  '"' + extract_specification + '"') else ""} \
      ~{if defined(database_specification) then ("--database-specification " +  '"' + database_specification + '"') else ""} \
      ~{if defined(filter_specification) then ("--filter-specification " +  '"' + filter_specification + '"') else ""} \
      ~{if defined(consolidate_specification) then ("--consolidate-specification " +  '"' + consolidate_specification + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    inclusion: "The inclusion targets in FASTA format."
    exclusion: "The exclusion targets in FASTA format."
    directory_place_output: "The directory to place all output."
    km_er: "The size of the k-mers."
    organization: "The degree of k-mer organization in the output files.\\nThis exploits the four-character alphabet of\\nnucleotides to produce several k-mer output files,\\nwith all k-mers in a file beginning with the same\\nshort sequence of nucleotides. This parameter\\ndetermines the number of nucleotides to use and will\\nproduce 4^X output files, where X is the number of\\nnucleotides specified by this parameter. The number of\\noutput files directly corresponds to the amount of\\nparallelization in the k-mer aggregation process."
    filter_percent: "The maximum percent identity of a candidate signature\\nwith an exclusion hit before discarding the signature.\\nWhen both the filtered percent and filtered length\\nlimits are exceed, the signature is discarded."
    filter_length: "The maximum shared fractional length of an exclusion\\ntarget alignment with a candidate signature before\\ndiscarding the signature. When both the filtered\\npercent and filtered length limits are exceed, the\\nsignature is discarded."
    seed_size: "The seed size used during alignment."
    reference: "The FASTA reference from which to extract signatures."
    reference_size: "The estimated total size in nucleotides of the\\nreference. This will be calculated if not specified."
    rate: "The probability of a mutation or error at an arbitrary\\nposition. The default value is 0.01."
    in_hits: "The minimum number of inclusion targets that must\\ncontain a k-mer observed in the reference to begin or\\ncontinue building candidate signatures. This will be\\ncalculated if not specified."
    ex_hits: "The maximum allowable number of exclusion targets that\\nmay contain a k-mer observed in the reference before\\nterminating the construction of a candidate signature.\\nThis will be calculated if not specified."
    gap: "The maximum number of consecutive k-mers observed in\\nthe reference during signature candidate construction\\nthat fail to have enough inclusion hits before\\nterminating the construction of a candidate signature.\\nThis will be calculated if not specified and is\\ndetermined from the size of k and the rate."
    size: "The minimum size of all reported candidate signatures.\\nIdentified candidate signatures shorter than this\\nvalue will be discard."
    gc_content: "The average GC-content of all inclusion and exclusion\\ntargets. This will be calculated from inclusion and\\nexclusion targets if not specified."
    confidence: "The statistical confidence level in decision making\\ninvolving probabilities when producing candidate\\nsignatures."
    parallelization: "The number of processes to run simultaneously. Note\\nthat this is only applicable when running Neptune in\\nnon-DRMAA mode (default)."
    drmaa: "Whether or not to run Neptune in DRMAA-mode and\\nattempt to schedule jobs through DRMAA. This will\\nrequire setting up DRMAA in advance."
    default_specification: "The default DRMAA parameters."
    count_specification: "The DRMAA parameters specific to k-mer counting."
    aggregate_specification: "The DRMAA specific parameters specific to k-mer\\naggregation."
    extract_specification: "The DRMAA parameters specific to candidate signature\\nextraction."
    database_specification: "The DRMAA parameters specific to database construction\\nand querying."
    filter_specification: "The DRMAA parameters specific to candidate signature\\nfiltering."
    consolidate_specification: "The DRMAA parameters specific to filtered signature\\nconsolidation.\\n"
    neptune_cond_a: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_place_output = "${in_directory_place_output}"
  }
}