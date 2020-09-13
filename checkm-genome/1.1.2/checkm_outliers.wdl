version 1.0

task CheckmOutliers {
  input {
    Int? distributions
    String? report_type
    Directory? extension
    Boolean? quiet
    String results_dir
    String bin_dir
    String tetra_profile
    String output_file
  }
  command <<<
    checkm outliers \
      ~{results_dir} \
      ~{bin_dir} \
      ~{tetra_profile} \
      ~{output_file} \
      ~{if defined(distributions) then ("--distributions " +  '"' + distributions + '"') else ""} \
      ~{if defined(report_type) then ("--report_type " +  '"' + report_type + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    distributions: "reference distribution used to identify outliers; integer between 0 and 100 (default: 95)"
    report_type: "report sequences that are outliers in 'all' or 'any' reference distribution (default: any)"
    extension: "extension of bins (other files in directory are ignored) (default: fna)"
    quiet: "suppress console output"
    results_dir: "directory specified during qa command"
    bin_dir: "directory containing bins (fasta format)"
    tetra_profile: "tetranucleotide profiles for each sequence (see tetra command)"
    output_file: "print results to file"
  }
  output {
    File out_stdout = stdout()
  }
}