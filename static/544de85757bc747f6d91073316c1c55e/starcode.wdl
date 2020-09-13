version 1.0

task Starcode {
  input {
    Boolean? dist
    Boolean? threads
    Boolean? quiet
    Boolean? cluster_ratio
    Boolean? sphere
    Boolean? connected_comp
    Boolean? input_file_default
    File? output_file_default_stdout
    Boolean? input_one
    Boolean? input_two
    Boolean? output_one
    Boolean? output_two
    Boolean? non_redundant
    Boolean? print_clusters
    Boolean? seq_id
  }
  command <<<
    starcode \
      ~{if (dist) then "--dist" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (cluster_ratio) then "--cluster-ratio" else ""} \
      ~{if (sphere) then "--sphere" else ""} \
      ~{if (connected_comp) then "--connected-comp" else ""} \
      ~{if (input_file_default) then "--input" else ""} \
      ~{if (output_file_default_stdout) then "--output" else ""} \
      ~{if (input_one) then "--input1" else ""} \
      ~{if (input_two) then "--input2" else ""} \
      ~{if (output_one) then "--output1" else ""} \
      ~{if (output_two) then "--output2" else ""} \
      ~{if (non_redundant) then "--non-redundant" else ""} \
      ~{if (print_clusters) then "--print-clusters" else ""} \
      ~{if (seq_id) then "--seq-id" else ""}
  >>>
  parameter_meta {
    dist: ": maximum Levenshtein distance (default auto)"
    threads: ": number of concurrent threads (default 1)"
    quiet: ": quiet output (default verbose)"
    cluster_ratio: ": min size ratio for merging clusters in\\nmessage passing (default 5.0)"
    sphere: ": use sphere clustering algorithm"
    connected_comp: ": cluster connected components"
    input_file_default: ": input file (default stdin)"
    output_file_default_stdout: ": output file (default stdout)"
    input_one: ": input file 1"
    input_two: ": input file 2"
    output_one: ": output file1 (default input1-starcode.fastq)"
    output_two: ": output file2 (default input2-starcode.fastq)"
    non_redundant: ": remove redundant sequences from input file(s)"
    print_clusters: ": outputs cluster compositions"
    seq_id: ": print sequence id numbers (1-based)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default_stdout = "${in_output_file_default_stdout}"
  }
}