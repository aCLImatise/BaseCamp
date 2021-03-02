version 1.0

task RustPredictProfiles {
  input {
    File? directory_path_outputfile
    Boolean? writes_profiles_produce
    String correlation_observed_predicted
    String transcriptome
    String alignment
    String offset
    String lengths
    String path_file_produced
    String files
  }
  command <<<
    rust_predict_profiles \
      ~{correlation_observed_predicted} \
      ~{transcriptome} \
      ~{alignment} \
      ~{offset} \
      ~{lengths} \
      ~{path_file_produced} \
      ~{files} \
      ~{if defined(directory_path_outputfile) then ("-o " +  '"' + directory_path_outputfile + '"') else ""} \
      ~{if (writes_profiles_produce) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_path_outputfile: "directory  path to outputfile, default is \\\"predict_profiles\\\""
    writes_profiles_produce: "writes all profiles in csv files, may produce >10,000"
    correlation_observed_predicted: "Correlation between observed and predicted profiles from CDS start + 120 to"
    transcriptome: "fasta file of transcripts, CDS start and end may be\\nprovided on description line using tab separation e.g.\\n>NM_0001 10 5000, otherwise it searches for longest\\nORF"
    alignment: "sorted bam file of alignments to transcriptome"
    offset: "nucleotide offset to A-site"
    lengths: "lengths of footprints included, for example 28:32 is\\n28,29,30,31,32"
    path_file_produced: "path to file produced from \\\"rust_codon\\\""
    files: "--version             show program's version number and exit"
  }
  output {
    File out_stdout = stdout()
  }
}