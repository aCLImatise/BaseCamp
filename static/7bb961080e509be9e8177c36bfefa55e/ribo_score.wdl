version 1.0

task RiboScore {
  input {
    String? directory_place_files
    String? flanking_length
    Int? min_percent
    String? assembly_ext
    String? ref_ext
    Boolean? blast_full
    String? verbosity
    String in_dir
  }
  command <<<
    ribo score \
      ~{in_dir} \
      ~{if defined(directory_place_files) then ("--output " +  '"' + directory_place_files + '"') else ""} \
      ~{if defined(flanking_length) then ("--flanking_length " +  '"' + flanking_length + '"') else ""} \
      ~{if defined(min_percent) then ("--min_percent " +  '"' + min_percent + '"') else ""} \
      ~{if defined(assembly_ext) then ("--assembly_ext " +  '"' + assembly_ext + '"') else ""} \
      ~{if defined(ref_ext) then ("--ref_ext " +  '"' + ref_ext + '"') else ""} \
      ~{true="--blast_Full" false="" blast_full} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    directory_place_files: "directory in which to place the output files"
    flanking_length: "length of flanking regions, in bp; default: 1000"
    min_percent: "minimum percent identity"
    assembly_ext: "extenssion of reference, usually fasta"
    ref_ext: "extension of reference, usually .gb"
    blast_full: "if true, blast full sequences along with just the flanking. Interpretation is not implemented currently as false positives cant be detected this way"
    verbosity: "Logger writes debug to file in output dir; this sets verbosity level sent to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical(); default: 2"
    in_dir: "dir containing a genbank file, assembly filesas fastas. Usually the 'mauve' dir in the riboSeed results"
  }
}