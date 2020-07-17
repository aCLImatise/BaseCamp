version 1.0

task MsstitchMakedecoy {
  input {
    String? input_file_format
    String? directory_to_output
    String? output_file
    String? dbfile
    String? scramble
    Boolean? ignore_target_hits
    Boolean? no_trypsin
    String? misc_leav
    Int? min_len
    Int? max_shuffle
  }
  command <<<
    msstitch makedecoy \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if defined(scramble) then ("--scramble " +  '"' + scramble + '"') else ""} \
      ~{true="--ignore-target-hits" false="" ignore_target_hits} \
      ~{true="--notrypsin" false="" no_trypsin} \
      ~{if defined(misc_leav) then ("--miscleav " +  '"' + misc_leav + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_shuffle) then ("--maxshuffle " +  '"' + max_shuffle + '"') else ""}
  >>>
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    dbfile: "Database lookup file"
    scramble: "Decoy scrambling method, use: \"tryp_rev\": tryptic reverse, or \"prot_rev\": full (protein) reverse."
    ignore_target_hits: "Do not remove tryptic peptides from sequence where they match target DB"
    no_trypsin: "Do not trypsinize. User is expected to deliver apretrypsinized FASTA file"
    misc_leav: "Amount of missed cleavages to allow when trypsinizing, default is 0"
    min_len: "Minimum length of peptide to be included"
    max_shuffle: "Amount of times to attempt to shuffle a decoy reversed peptide to make it not match target peptides, before discarding it. Used when using tryptic peptide reversal (not protein reversal)"
  }
}