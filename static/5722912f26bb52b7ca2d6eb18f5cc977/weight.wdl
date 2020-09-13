version 1.0

task Weight {
  input {
    String? use_blosum_scheme
    Int? filter_seqs_ident
    File? save_weightannotated_alignment
    Boolean? use_based_scheme
    String? sample_n_sequences
    Boolean? use_voronoi_scheme
    File? in_format
    Boolean? quiet
    Boolean? options
    File alignment_file
  }
  command <<<
    weight \
      ~{alignment_file} \
      ~{if defined(use_blosum_scheme) then ("-b " +  '"' + use_blosum_scheme + '"') else ""} \
      ~{if defined(filter_seqs_ident) then ("-f " +  '"' + filter_seqs_ident + '"') else ""} \
      ~{if defined(save_weightannotated_alignment) then ("-o " +  '"' + save_weightannotated_alignment + '"') else ""} \
      ~{if (use_based_scheme) then "-p" else ""} \
      ~{if defined(sample_n_sequences) then ("-s " +  '"' + sample_n_sequences + '"') else ""} \
      ~{if (use_voronoi_scheme) then "-v" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    use_blosum_scheme: ": use BLOSUM weighting scheme at <f> fractional identity"
    filter_seqs_ident: ": filter out seqs w/ fractional ident > <x> [0-1]"
    save_weightannotated_alignment: ": save weight-annotated alignment in <outfile>"
    use_based_scheme: ": use position based weight scheme (Henikoff & Henikoff)"
    sample_n_sequences: ": sample <n> sequences at random into a new alignment"
    use_voronoi_scheme: ": use Voronoi weight scheme (Sibbald & Argos)"
    in_format: ": specify alignment file format <s>\\nallowed formats: SELEX, MSF, Clustal, a2m, PHYLIP"
    quiet: ": suppress verbose banner"
    options: ""
    alignment_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}