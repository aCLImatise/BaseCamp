version 1.0

task ArtSOLiD {
  input {
    String? read_type_amplicon
    String? use_cigar_alignment
    File? generate_alignment_file
    String? random_seed_simulation
    Int? scale_factor_adjusting
    String? users_own_read
  }
  command <<<
    art_SOLiD \
      ~{if defined(read_type_amplicon) then ("-A " +  '"' + read_type_amplicon + '"') else ""} \
      ~{if defined(use_cigar_alignment) then ("-M " +  '"' + use_cigar_alignment + '"') else ""} \
      ~{if defined(generate_alignment_file) then ("-s " +  '"' + generate_alignment_file + '"') else ""} \
      ~{if defined(random_seed_simulation) then ("-r " +  '"' + random_seed_simulation + '"') else ""} \
      ~{if defined(scale_factor_adjusting) then ("-f " +  '"' + scale_factor_adjusting + '"') else ""} \
      ~{if defined(users_own_read) then ("-p " +  '"' + users_own_read + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_type_amplicon: "the read type for amplicon sequencing simulation (s:single-end, m: matepair, p: paired-end)"
    use_cigar_alignment: "to use CIGAR 'M' instead of '=/X' for alignment match/mismatch"
    generate_alignment_file: "to generate a SAM alignment file"
    random_seed_simulation: "the random seed for the simulation"
    scale_factor_adjusting: "the scale factor adjusting error rate (e.g., -f 0 for zero-error rate simulation)"
    users_own_read: "user's own read profile for simulation"
  }
  output {
    File out_stdout = stdout()
  }
}