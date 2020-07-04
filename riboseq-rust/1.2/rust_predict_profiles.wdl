version 1.0

task RustPredictProfiles.bak {
  input {
    String? directory_path_outputfile
    Boolean? writes_profiles_produce
    String transcriptome
    String alignment
    String offset
    Int lengths
    String rust_codon_file
  }
  command <<<
    rust_predict_profiles.bak \
      ~{transcriptome} \
      ~{alignment} \
      ~{offset} \
      ~{lengths} \
      ~{rust_codon_file} \
      ~{if defined(directory_path_outputfile) then ("-o " +  '"' + directory_path_outputfile + '"') else ""} \
      ~{true="-p" false="" writes_profiles_produce}
  >>>
  parameter_meta {
    directory_path_outputfile: "directory  path to outputfile, default is \"predict_profiles\""
    writes_profiles_produce: "writes all profiles in csv files, may produce >10,000 files"
    transcriptome: "fasta file of transcripts, CDS start and end may be provided on description line using tab separation e.g. >NM_0001 10 5000, otherwise it searches for longest ORF"
    alignment: "sorted bam file of alignments to transcriptome"
    offset: "nucleotide offset to A-site"
    lengths: "lengths of footprints included, for example 28:32 is 28,29,30,31,32"
    rust_codon_file: "path to file produced from \"rust_codon\""
  }
}