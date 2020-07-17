version 1.0

task Starcode {
  input {
    Boolean? dist
    Boolean? threads
    Boolean? quiet
    Boolean? sphere
    Boolean? connected_comp
    Boolean? input_file_default
    Boolean? output_file_default_stdout
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
      ~{true="--dist" false="" dist} \
      ~{true="--threads" false="" threads} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--sphere" false="" sphere} \
      ~{true="--connected-comp" false="" connected_comp} \
      ~{true="--input" false="" input_file_default} \
      ~{true="--output" false="" output_file_default_stdout} \
      ~{true="--input1" false="" input_one} \
      ~{true="--input2" false="" input_two} \
      ~{true="--output1" false="" output_one} \
      ~{true="--output2" false="" output_two} \
      ~{true="--non-redundant" false="" non_redundant} \
      ~{true="--print-clusters" false="" print_clusters} \
      ~{true="--seq-id" false="" seq_id}
  >>>
  parameter_meta {
    dist: ": maximum Levenshtein distance (default auto)"
    threads: ": number of concurrent threads (default 1)"
    quiet: ": quiet output (default verbose)"
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
}