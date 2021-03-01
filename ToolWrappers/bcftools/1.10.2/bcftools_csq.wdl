version 1.0

task BcftoolsCsq {
  input {
    File? fast_a_ref
    File? gff_an_not
    Boolean? brief_predictions
    String? custom_tag
    Boolean? local_csq
    Int? nc_sq
    Int? phase
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
      ~{if (brief_predictions) then "--brief-predictions" else ""} \
      ~{if defined(custom_tag) then ("--custom-tag " +  '"' + custom_tag + '"') else ""} \
      ~{if (local_csq) then "--local-csq" else ""} \
      ~{if defined(nc_sq) then ("--ncsq " +  '"' + nc_sq + '"') else ""} \
      ~{if defined(phase) then ("--phase " +  '"' + phase + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if (no_version) then "--no-version" else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if defined(samples_file) then ("--samples-file " +  '"' + samples_file + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a_ref: "reference file in fasta format"
    gff_an_not: "gff3 annotation file"
    brief_predictions: "annotate with abbreviated protein-changing predictions"
    custom_tag: "use this tag instead of the default BCSQ"
    local_csq: "localized predictions, consider only one VCF record at a time"
    nc_sq: "maximum number of consequences to consider per site [16]"
    phase: "how to handle unphased heterozygous genotypes: [r]\\na: take GTs as is, create haplotypes regardless of phase (0/1 -> 0|1)\\nm: merge *all* GTs into a single haplotype (0/1 -> 1, 1/2 -> 1)\\nr: require phased GTs, throw an error on unphased het GTs\\nR: create non-reference haplotypes if possible (0/1 -> 1|1, 1/2 -> 1|2)\\ns: skip unphased hets"
    exclude: "exclude sites for which the expression is true"
    force: "run even if some sanity checks fail"
    include: "select sites for which the expression is true"
    no_version: "do not append version and command line to the header"
    write_output_file: "write output to a file [standard output]"
    output_type: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF\\nv: uncompressed VCF, t: plain tab-delimited text output [v]"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    samples: "<-|list>          samples to include or \\\"-\\\" to apply all variants and ignore samples"
    samples_file: "samples to include"
    targets: "similar to -r but streams rather than index-jumps"
    targets_file: "similar to -R but streams rather than index-jumps"
    threads: "use multithreading with <int> worker threads [0]"
    verbose: "verbosity level 0-2 [1]"
    in_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}