version 1.0

task SalmIDpy {
  input {
    File? input_file
    File? extension
    Directory? input_dir
    String? coverage_taxonomy_
    String? thorough__mode
    Boolean? v
  }
  command <<<
    SalmID_py \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(input_dir) then ("--input_dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(coverage_taxonomy_) then ("-r " +  '"' + coverage_taxonomy_ + '"') else ""} \
      ~{if defined(thorough__mode) then ("-m " +  '"' + thorough__mode + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "Single fastq.gz file input, include path to file if\\nfile is not in same directory"
    extension: "File extension, if specified without \\\"--input_dir\\\",\\nSalmID will attempt to ID all files with this\\nextension in current directory, otherwise files in\\ninput directory"
    input_dir: "Directory which contains data for identification, when\\nnot specified files in current directory will be\\nanalyzed."
    coverage_taxonomy_: ", coverage or taxonomy, --report percentage, coverage or taxonomy\\nReport either percentage (\\\"percentage\\\") of clade\\nspecific kmers recovered, average kmer-coverage\\n(\\\"cov\\\"), or taxonomy (taxonomic species ID, plus\\nobserved mean k-mer coverages and expected coverage)."
    thorough__mode: "or thorough, --mode quick or thorough\\nQuick [quick] or thorough [thorough] mode\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}