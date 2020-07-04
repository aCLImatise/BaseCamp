version 1.0

task BcftoolsCsq {
  input {
    File? fast_a_ref
    File? gff_an_not
    Boolean? brief_predictions
    String? custom_tag
    Boolean? local_csq
    Int? nc_sq
    String? phase
    String? exclude
    Boolean? force
    String? include
    Boolean? no_version
    File? write_output_file
    String? output_type
    String? regions
    File? regions_file
    Boolean? samples
    File? samples_file
    String? targets
    File? targets_file
    Int? threads
    Int? verbose
    String in_dot_vcf
  }
  command <<<
    bcftools csq \
      ~{in_dot_vcf} \
      ~{if defined(fast_a_ref) then ("--fasta-ref " +  '"' + fast_a_ref + '"') else ""} \
      ~{if defined(gff_an_not) then ("--gff-annot " +  '"' + gff_an_not + '"') else ""} \
      ~{true="--brief-predictions" false="" brief_predictions} \
      ~{if defined(custom_tag) then ("--custom-tag " +  '"' + custom_tag + '"') else ""} \
      ~{true="--local-csq" false="" local_csq} \
      ~{if defined(nc_sq) then ("--ncsq " +  '"' + nc_sq + '"') else ""} \
      ~{if defined(phase) then ("--phase " +  '"' + phase + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{true="--no-version" false="" no_version} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{true="--samples" false="" samples} \
      ~{if defined(samples_file) then ("--samples-file " +  '"' + samples_file + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    fast_a_ref: "reference file in fasta format"
    gff_an_not: "gff3 annotation file"
    brief_predictions: "annotate with abbreviated protein-changing predictions"
    custom_tag: "use this tag instead of the default BCSQ"
    local_csq: "localized predictions, consider only one VCF record at a time"
    nc_sq: "maximum number of consequences to consider per site [16]"
    phase: "how to handle unphased heterozygous genotypes: [r] a: take GTs as is, create haplotypes regardless of phase (0/1 -> 0|1) m: merge *all* GTs into a single haplotype (0/1 -> 1, 1/2 -> 1) r: require phased GTs, throw an error on unphased het GTs R: create non-reference haplotypes if possible (0/1 -> 1|1, 1/2 -> 1|2) s: skip unphased hets"
    exclude: "exclude sites for which the expression is true"
    force: "run even if some sanity checks fail"
    include: "select sites for which the expression is true"
    no_version: "do not append version and command line to the header"
    write_output_file: "write output to a file [standard output]"
    output_type: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF v: uncompressed VCF, t: plain tab-delimited text output [v]"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    samples: "<-|list>          samples to include or \"-\" to apply all variants and ignore samples"
    samples_file: "samples to include"
    targets: "similar to -r but streams rather than index-jumps"
    targets_file: "similar to -R but streams rather than index-jumps"
    threads: "use multithreading with <int> worker threads [0]"
    verbose: "verbosity level 0-2 [1]"
    in_dot_vcf: ""
  }
}