version 1.0

task CheckmModify {
  input {
    String? add
    String? remove
    File? outlier_file
    Boolean? quiet
    String seq_file
    String bin_file
    String output_file
  }
  command <<<
    checkm modify \
      ~{seq_file} \
      ~{bin_file} \
      ~{output_file} \
      ~{if defined(add) then ("--add " +  '"' + add + '"') else ""} \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""} \
      ~{if defined(outlier_file) then ("--outlier_file " +  '"' + outlier_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/checkm-genome:1.1.3--py_1"
  }
  parameter_meta {
    add: "ID of sequence to add to bin (may specify multiple times)"
    remove: "ID of sequence to remove from bin (may specify multiple times)"
    outlier_file: "remove all sequences marked as outliers in the bin (see outlier command)"
    quiet: "suppress console output"
    seq_file: "sequences used to generate bins (fasta format)"
    bin_file: "bin to be modified"
    output_file: "modified bin"
  }
  output {
    File out_stdout = stdout()
  }
}