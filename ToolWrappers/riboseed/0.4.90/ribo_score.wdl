version 1.0

task RiboScore {
  input {
    Directory? directory_place_files
    Int? flanking_length
    Int? min_percent
    String? assembly_ext
    String? ref_ext
    Boolean? blast_full
    File? verbosity
  }
  command <<<
    ribo score \
      ~{if defined(directory_place_files) then ("--output " +  '"' + directory_place_files + '"') else ""} \
      ~{if defined(flanking_length) then ("--flanking_length " +  '"' + flanking_length + '"') else ""} \
      ~{if defined(min_percent) then ("--min_percent " +  '"' + min_percent + '"') else ""} \
      ~{if defined(assembly_ext) then ("--assembly_ext " +  '"' + assembly_ext + '"') else ""} \
      ~{if defined(ref_ext) then ("--ref_ext " +  '"' + ref_ext + '"') else ""} \
      ~{if (blast_full) then "--blast_Full" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_place_files: "directory in which to place the output files"
    flanking_length: "length of flanking regions, in bp; default: 1000"
    min_percent: "minimum percent identity"
    assembly_ext: "extenssion of reference, usually fasta"
    ref_ext: "extension of reference, usually .gb"
    blast_full: "if true, blast full sequences along with just the\\nflanking. Interpretation is not implemented currently\\nas false positives cant be detected this way"
    verbosity: "Logger writes debug to file in output dir; this sets\\nverbosity level sent to stderr. 1 = debug(), 2 =\\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\\ndefault: 2\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_place_files = "${in_directory_place_files}"
    File out_verbosity = "${in_verbosity}"
  }
}