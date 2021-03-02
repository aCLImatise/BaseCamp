version 1.0

task Ntedit {
  input {
    Boolean? _number_threads
    Boolean? draft_genome_assembly
    Boolean? bloom_filter_file
    Boolean? secondary_bloom_filter
    File? output_file_prefix
    Boolean? minimum_contig_length
    Boolean? maximum_number_insertion_try_range
    Boolean? maximum_number_deletions_try_range
    Boolean? kx_ratio_number
    Boolean? ky_ratio_number
    Boolean? ratio_number_missing
    Boolean? ratio_number_present
    Boolean? cap_number_base
    Boolean? controls_size_checking
    Boolean? mode_best_substitution
    Boolean? snv_mode_overrides
    Boolean? verbose_mode_default
  }
  command <<<
    ntedit \
      ~{if (_number_threads) then "-t" else ""} \
      ~{if (draft_genome_assembly) then "-f" else ""} \
      ~{if (bloom_filter_file) then "-r" else ""} \
      ~{if (secondary_bloom_filter) then "-e" else ""} \
      ~{if (output_file_prefix) then "-b" else ""} \
      ~{if (minimum_contig_length) then "-z" else ""} \
      ~{if (maximum_number_insertion_try_range) then "-i" else ""} \
      ~{if (maximum_number_deletions_try_range) then "-d" else ""} \
      ~{if (kx_ratio_number) then "-x" else ""} \
      ~{if (ky_ratio_number) then "-y" else ""} \
      ~{if (ratio_number_missing) then "-X" else ""} \
      ~{if (ratio_number_present) then "-Y" else ""} \
      ~{if (cap_number_base) then "-c" else ""} \
      ~{if (controls_size_checking) then "-j" else ""} \
      ~{if (mode_best_substitution) then "-m" else ""} \
      ~{if (snv_mode_overrides) then "-s" else ""} \
      ~{if (verbose_mode_default) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ntedit:1.3.4--he513fc3_0"
  }
  parameter_meta {
    _number_threads: ",     number of threads [default=1]"
    draft_genome_assembly: ",     draft genome assembly (FASTA, Multi-FASTA, and/or gzipped compatible), REQUIRED"
    bloom_filter_file: ",     Bloom filter file (generated from ntHits), REQUIRED"
    secondary_bloom_filter: ",     secondary Bloom filter with kmers to reject (generated from ntHits), OPTIONAL. EXPERIMENTAL"
    output_file_prefix: ",     output file prefix, OPTIONAL"
    minimum_contig_length: ",     minimum contig length [default=100]"
    maximum_number_insertion_try_range: ",     maximum number of insertion bases to try, range 0-5, [default=4]"
    maximum_number_deletions_try_range: ",     maximum number of deletions bases to try, range 0-5, [default=5]"
    kx_ratio_number: ",     k/x ratio for the number of kmers that should be missing, [default=5.000]"
    ky_ratio_number: ",     k/y ratio for the number of editted kmers that should be present, [default=9.000]"
    ratio_number_missing: ",     ratio of number of kmers in the k subset that should be missing in order to attempt fix (higher=stringent), [default=0.5]"
    ratio_number_present: ",     ratio of number of kmers in the k subset that should be present to accept an edit (higher=stringent), [default=0.5]"
    cap_number_base: ",     cap for the number of base insertions that can be made at one position, [default=k*1.5]"
    controls_size_checking: ",     controls size of kmer subset. When checking subset of kmers, check every jth kmer, [default=3]"
    mode_best_substitution: ",     mode of editing, range 0-2, [default=0]\\n0: best substitution, or first good indel\\n1: best substitution, or best indel\\n2: best edit overall (suggestion that you reduce i and d for performance)"
    snv_mode_overrides: ",     SNV mode. Overrides draft kmer checks, forcing reassessment at each position (-s 1 = yes, default = 0, no. EXPERIMENTAL)"
    verbose_mode_default: ",     verbose mode (-v 1 = yes, default = 0, no)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}