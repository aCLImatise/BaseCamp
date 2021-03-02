version 1.0

task Weight {
  input {
    String? use_weighting_scheme
    Int? filter_seqs_fractional
    File? save_weightannotated_alignment
    Boolean? use_based_scheme
    String? sample_sequences_random
    Boolean? use_scheme_sibbald
    File? in_format
    Boolean? quiet
    Boolean? options
    File alignment_file
  }
  command <<<
    weight \
      ~{alignment_file} \
      ~{if defined(use_weighting_scheme) then ("-b " +  '"' + use_weighting_scheme + '"') else ""} \
      ~{if defined(filter_seqs_fractional) then ("-f " +  '"' + filter_seqs_fractional + '"') else ""} \
      ~{if defined(save_weightannotated_alignment) then ("-o " +  '"' + save_weightannotated_alignment + '"') else ""} \
      ~{if (use_based_scheme) then "-p" else ""} \
      ~{if defined(sample_sequences_random) then ("-s " +  '"' + sample_sequences_random + '"') else ""} \
      ~{if (use_scheme_sibbald) then "-v" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_weighting_scheme: ": use BLOSUM weighting scheme at <f> fractional identity"
    filter_seqs_fractional: ": filter out seqs w/ fractional ident > <x> [0-1]"
    save_weightannotated_alignment: ": save weight-annotated alignment in <outfile>"
    use_based_scheme: ": use position based weight scheme (Henikoff & Henikoff)"
    sample_sequences_random: ": sample <n> sequences at random into a new alignment"
    use_scheme_sibbald: ": use Voronoi weight scheme (Sibbald & Argos)"
    in_format: ": specify alignment file format <s>\\nallowed formats: SELEX, MSF, Clustal, a2m, PHYLIP"
    quiet: ": suppress verbose banner"
    options: ""
    alignment_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}