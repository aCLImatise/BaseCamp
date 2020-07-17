version 1.0

task Borf {
  input {
    String? output_path
    Boolean? strand
    Boolean? all_orfs
    String? orf_length
    String? upstream_incomplete_length
    String? batch_size
    Boolean? force_overwrite
    String fast_a_file
  }
  command <<<
    borf \
      ~{fast_a_file} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{true="--strand" false="" strand} \
      ~{true="--all_orfs" false="" all_orfs} \
      ~{if defined(orf_length) then ("--orf_length " +  '"' + orf_length + '"') else ""} \
      ~{if defined(upstream_incomplete_length) then ("--upstream_incomplete_length " +  '"' + upstream_incomplete_length + '"') else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{true="--force_overwrite" false="" force_overwrite}
  >>>
  parameter_meta {
    output_path: "path to write output files. [OUTPUT_PATH].pep and [OUTPUT_PATH].txt (default: input .fa file name)"
    strand: "Predict orfs for both strands"
    all_orfs: "Return all ORFs for each sequence longer than the cutoff"
    orf_length: "Minimum ORF length (AA). (default: 100)"
    upstream_incomplete_length: "Minimum length (AA) of uninterupted sequence upstream of ORF to be included for incomplete_5prime transcripts (default: 50)"
    batch_size: "Number of fasta records to read in in each batch"
    force_overwrite: "Force overwriting of output files?"
    fast_a_file: "fasta file to predict ORFs"
  }
}