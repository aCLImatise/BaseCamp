version 1.0

task Glam2 {
  input {
    Directory? output_directory_will
    Directory? output_directory_glamout
    Boolean? number_alignment_runs
    Boolean? end_run_many
    Boolean? examine_strands_forward
    Boolean? minimum_number_sequences
    Boolean? minimum_number_aligned
    Boolean? maximum_number_aligned
    Boolean? initial_number_aligned
    Boolean? dirichlet_mixture_file
    Boolean? _deletion_pseudocount
    Boolean? _nodeletion_pseudocount
    Boolean? _insertion_pseudocount
    Boolean? _noinsertion_pseudocount
    Boolean? weight_generic_sequencesetspecific
    Boolean? _initial_temperature
    Boolean? cooling_factor_iterations
    Boolean? temperature_lower_bound
    Boolean? print_progress_information
    Boolean? columnsampling_moves_sitesampling
    Boolean? site_sampling_algorithm
    Boolean? seed_pseudorandom_numbers
    Boolean? _run_quietly
    Boolean? print_version_exit
    Boolean? embed_sequence_file
    String? make_email_address
    String? make_description_field
    String alphabet
    String my_seqs_dot_fa
  }
  command <<<
    glam2 \
      ~{alphabet} \
      ~{my_seqs_dot_fa} \
      ~{if (output_directory_will) then "-o" else ""} \
      ~{if (output_directory_glamout) then "-O" else ""} \
      ~{if (number_alignment_runs) then "-r" else ""} \
      ~{if (end_run_many) then "-n" else ""} \
      ~{if (examine_strands_forward) then "-2" else ""} \
      ~{if (minimum_number_sequences) then "-z" else ""} \
      ~{if (minimum_number_aligned) then "-a" else ""} \
      ~{if (maximum_number_aligned) then "-b" else ""} \
      ~{if (initial_number_aligned) then "-w" else ""} \
      ~{if (dirichlet_mixture_file) then "-d" else ""} \
      ~{if (_deletion_pseudocount) then "-D" else ""} \
      ~{if (_nodeletion_pseudocount) then "-E" else ""} \
      ~{if (_insertion_pseudocount) then "-I" else ""} \
      ~{if (_noinsertion_pseudocount) then "-J" else ""} \
      ~{if (weight_generic_sequencesetspecific) then "-q" else ""} \
      ~{if (_initial_temperature) then "-t" else ""} \
      ~{if (cooling_factor_iterations) then "-c" else ""} \
      ~{if (temperature_lower_bound) then "-u" else ""} \
      ~{if (print_progress_information) then "-p" else ""} \
      ~{if (columnsampling_moves_sitesampling) then "-m" else ""} \
      ~{if (site_sampling_algorithm) then "-x" else ""} \
      ~{if (seed_pseudorandom_numbers) then "-s" else ""} \
      ~{if (_run_quietly) then "-Q" else ""} \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (embed_sequence_file) then "-M" else ""} \
      ~{if defined(make_email_address) then ("-A " +  '"' + make_email_address + '"') else ""} \
      ~{if defined(make_description_field) then ("-X " +  '"' + make_description_field + '"') else ""}
  >>>
  parameter_meta {
    output_directory_will: ": output directory; will not clobber existing files"
    output_directory_glamout: ": output directory (glam2_out); allow clobbering"
    number_alignment_runs: ": number of alignment runs (10)"
    end_run_many: ": end each run after this many iterations without improvement (10000)"
    examine_strands_forward: ": examine both strands - forward and reverse complement"
    minimum_number_sequences: ": minimum number of sequences in the alignment (2)"
    minimum_number_aligned: ": minimum number of aligned columns (2)"
    maximum_number_aligned: ": maximum number of aligned columns (50)"
    initial_number_aligned: ": initial number of aligned columns (20)"
    dirichlet_mixture_file: ": Dirichlet mixture file"
    _deletion_pseudocount: ": deletion pseudocount (0.1)"
    _nodeletion_pseudocount: ": no-deletion pseudocount (2.0)"
    _insertion_pseudocount: ": insertion pseudocount (0.02)"
    _noinsertion_pseudocount: ": no-insertion pseudocount (1.0)"
    weight_generic_sequencesetspecific: ": weight for generic versus sequence-set-specific residue abundances (1e+99)"
    _initial_temperature: ": initial temperature (1.2)"
    cooling_factor_iterations: ": cooling factor per n iterations (1.44)"
    temperature_lower_bound: ": temperature lower bound (0.1)"
    print_progress_information: ": print progress information at each iteration"
    columnsampling_moves_sitesampling: ": column-sampling moves per site-sampling move (1.0)"
    site_sampling_algorithm: ": site sampling algorithm: 0=FAST 1=SLOW 2=FFT (0)"
    seed_pseudorandom_numbers: ": seed for pseudo-random numbers (1)"
    _run_quietly: ": run quietly"
    print_version_exit: ": print version and exit (also accepts --version)"
    embed_sequence_file: ":  embed sequence file contents as hidden field in HTML"
    make_email_address: ":  make email address a hidden field in HTML"
    make_description_field: ":  make description a hidden field in HTML"
    alphabet: ""
    my_seqs_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_will = "${in_output_directory_will}"
    Directory out_output_directory_glamout = "${in_output_directory_glamout}"
  }
}