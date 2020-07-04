version 1.0

task SalmID.py {
  input {
    String? input_file
    File? extension
    Directory? input_dir
    String? coverage_taxonomy_
    String? thorough__mode
    Boolean? v
  }
  command <<<
    SalmID.py \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(input_dir) then ("--input_dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(coverage_taxonomy_) then ("-r " +  '"' + coverage_taxonomy_ + '"') else ""} \
      ~{if defined(thorough__mode) then ("-m " +  '"' + thorough__mode + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    input_file: "Single fastq.gz file input, include path to file if file is not in same directory"
    extension: "File extension, if specified without \"--input_dir\", SalmID will attempt to ID all files with this extension in current directory, otherwise files in input directory"
    input_dir: "Directory which contains data for identification, when not specified files in current directory will be analyzed."
    coverage_taxonomy_: ", coverage or taxonomy, --report percentage, coverage or taxonomy Report either percentage (\"percentage\") of clade specific kmers recovered, average kmer-coverage (\"cov\"), or taxonomy (taxonomic species ID, plus observed mean k-mer coverages and expected coverage)."
    thorough__mode: "or thorough, --mode quick or thorough Quick [quick] or thorough [thorough] mode"
    v: ""
  }
}