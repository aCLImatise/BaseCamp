version 1.0

task Weight {
  input {
    String? use_blosum_scheme
    String? filter_seqs_fractional
    File? save_weightannotated_alignment
    Boolean? use_position_henikoff
    String? sample_n_sequences
    Boolean? use_voronoi_scheme
    String? in_format
    Boolean? quiet
    Boolean? options
    String alignment_file
  }
  command <<<
    weight \
      ~{alignment_file} \
      ~{if defined(use_blosum_scheme) then ("-b " +  '"' + use_blosum_scheme + '"') else ""} \
      ~{if defined(filter_seqs_fractional) then ("-f " +  '"' + filter_seqs_fractional + '"') else ""} \
      ~{if defined(save_weightannotated_alignment) then ("-o " +  '"' + save_weightannotated_alignment + '"') else ""} \
      ~{true="-p" false="" use_position_henikoff} \
      ~{if defined(sample_n_sequences) then ("-s " +  '"' + sample_n_sequences + '"') else ""} \
      ~{true="-v" false="" use_voronoi_scheme} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    use_blosum_scheme: ": use BLOSUM weighting scheme at <f> fractional identity"
    filter_seqs_fractional: ": filter out seqs w/ fractional ident > <x> [0-1]"
    save_weightannotated_alignment: ": save weight-annotated alignment in <outfile>"
    use_position_henikoff: ": use position based weight scheme (Henikoff & Henikoff)"
    sample_n_sequences: ": sample <n> sequences at random into a new alignment"
    use_voronoi_scheme: ": use Voronoi weight scheme (Sibbald & Argos) "
    in_format: ": specify alignment file format <s> allowed formats: SELEX, MSF, Clustal, a2m, PHYLIP"
    quiet: ": suppress verbose banner"
    options: ""
    alignment_file: ""
  }
}