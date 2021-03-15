version 1.0

task MsstitchMakedecoy {
  input {
    File? input_file_format
    Directory? directory_to_output
    File? output_file
    File? dbfile
    String? scramble
    Boolean? ignore_target_hits
    Boolean? no_trypsin
    Int? misc_leav
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
      ~{if (ignore_target_hits) then "--ignore-target-hits" else ""} \
      ~{if (no_trypsin) then "--notrypsin" else ""} \
      ~{if defined(misc_leav) then ("--miscleav " +  '"' + misc_leav + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_shuffle) then ("--maxshuffle " +  '"' + max_shuffle + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msstitch:3.6--py_0"
  }
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    dbfile: "Database lookup file"
    scramble: "Decoy scrambling method, use: \\\"tryp_rev\\\": tryptic\\nreverse, or \\\"prot_rev\\\": full (protein) reverse."
    ignore_target_hits: "Do not remove tryptic peptides from sequence where\\nthey match target DB"
    no_trypsin: "Do not trypsinize. User is expected to deliver\\napretrypsinized FASTA file"
    misc_leav: "Amount of missed cleavages to allow when trypsinizing,\\ndefault is 0"
    min_len: "Minimum length of peptide to be included"
    max_shuffle: "Amount of times to attempt to shuffle a decoy reversed\\npeptide to make it not match target peptides, before\\ndiscarding it. Used when using tryptic peptide\\nreversal (not protein reversal)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_to_output = "${in_directory_to_output}"
    File out_output_file = "${in_output_file}"
  }
}