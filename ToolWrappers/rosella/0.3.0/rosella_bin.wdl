version 1.0

task RosellaBin {
  input {
    String? ulimit
    Int? trim_min
    Int? trim_max
    String? threads
    String? scaler
    String? reference
    String? ploidy
    String? parallel_contigs
    Directory? output_directory
    String? n_neighbors
    String? n_components
    String? minimum_reads_in_link
    Int? min_variant_quality
    Int? min_variant_depth
    Int? min_samples
    Int? min_repeat_entropy
    Int? min_read_aligned_percent
    Int? min_dist
    Int? min_covered_fraction
    Int? min_contig_size
    Int? min_bin_size
    String? method
    String? mapq_threshold
    String? mapper
    String? long_read_mapper
    Int? km_er_size
    String? in_del_heterozygosity
    String? heterozygosity
    String? fdr_threshold
    String? coverage_fold
    String? contig_end_exclusion
    String? cluster_distance
    String? base_quality_threshold
    String? b_tail
    String? a_spread
  }
  command <<<
    rosella bin \
      ~{if defined(ulimit) then ("--ulimit " +  '"' + ulimit + '"') else ""} \
      ~{if defined(trim_min) then ("--trim-min " +  '"' + trim_min + '"') else ""} \
      ~{if defined(trim_max) then ("--trim-max " +  '"' + trim_max + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(scaler) then ("--scaler " +  '"' + scaler + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(parallel_contigs) then ("--parallel-contigs " +  '"' + parallel_contigs + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(n_neighbors) then ("--n-neighbors " +  '"' + n_neighbors + '"') else ""} \
      ~{if defined(n_components) then ("--n-components " +  '"' + n_components + '"') else ""} \
      ~{if defined(minimum_reads_in_link) then ("--minimum-reads-in-link " +  '"' + minimum_reads_in_link + '"') else ""} \
      ~{if defined(min_variant_quality) then ("--min-variant-quality " +  '"' + min_variant_quality + '"') else ""} \
      ~{if defined(min_variant_depth) then ("--min-variant-depth " +  '"' + min_variant_depth + '"') else ""} \
      ~{if defined(min_samples) then ("--min-samples " +  '"' + min_samples + '"') else ""} \
      ~{if defined(min_repeat_entropy) then ("--min-repeat-entropy " +  '"' + min_repeat_entropy + '"') else ""} \
      ~{if defined(min_read_aligned_percent) then ("--min-read-aligned-percent " +  '"' + min_read_aligned_percent + '"') else ""} \
      ~{if defined(min_dist) then ("--min-dist " +  '"' + min_dist + '"') else ""} \
      ~{if defined(min_covered_fraction) then ("--min-covered-fraction " +  '"' + min_covered_fraction + '"') else ""} \
      ~{if defined(min_contig_size) then ("--min-contig-size " +  '"' + min_contig_size + '"') else ""} \
      ~{if defined(min_bin_size) then ("--min-bin-size " +  '"' + min_bin_size + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(mapq_threshold) then ("--mapq-threshold " +  '"' + mapq_threshold + '"') else ""} \
      ~{if defined(mapper) then ("--mapper " +  '"' + mapper + '"') else ""} \
      ~{if defined(long_read_mapper) then ("--longread-mapper " +  '"' + long_read_mapper + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(in_del_heterozygosity) then ("--indel-heterozygosity " +  '"' + in_del_heterozygosity + '"') else ""} \
      ~{if defined(heterozygosity) then ("--heterozygosity " +  '"' + heterozygosity + '"') else ""} \
      ~{if defined(fdr_threshold) then ("--fdr-threshold " +  '"' + fdr_threshold + '"') else ""} \
      ~{if defined(coverage_fold) then ("--coverage-fold " +  '"' + coverage_fold + '"') else ""} \
      ~{if defined(contig_end_exclusion) then ("--contig-end-exclusion " +  '"' + contig_end_exclusion + '"') else ""} \
      ~{if defined(cluster_distance) then ("--cluster-distance " +  '"' + cluster_distance + '"') else ""} \
      ~{if defined(base_quality_threshold) then ("--base-quality-threshold " +  '"' + base_quality_threshold + '"') else ""} \
      ~{if defined(b_tail) then ("--b-tail " +  '"' + b_tail + '"') else ""} \
      ~{if defined(a_spread) then ("--a-spread " +  '"' + a_spread + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rosella:0.3.0--h443a992_0"
  }
  parameter_meta {
    ulimit: ""
    trim_min: ""
    trim_max: ""
    threads: ""
    scaler: ""
    reference: ""
    ploidy: ""
    parallel_contigs: ""
    output_directory: ""
    n_neighbors: ""
    n_components: ""
    minimum_reads_in_link: ""
    min_variant_quality: ""
    min_variant_depth: ""
    min_samples: ""
    min_repeat_entropy: ""
    min_read_aligned_percent: ""
    min_dist: ""
    min_covered_fraction: ""
    min_contig_size: ""
    min_bin_size: ""
    method: ""
    mapq_threshold: ""
    mapper: ""
    long_read_mapper: ""
    km_er_size: ""
    in_del_heterozygosity: ""
    heterozygosity: ""
    fdr_threshold: ""
    coverage_fold: ""
    contig_end_exclusion: ""
    cluster_distance: ""
    base_quality_threshold: ""
    b_tail: ""
    a_spread: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}