version 1.0

task Borf {
  input {
    File? output_path
    Boolean? strand
    Boolean? all_orfs
    Int? upstream_incomplete_length
    Int? batch_size
    Boolean? force_overwrite
    Int? l
    String cut_off
  }
  command <<<
    borf \
      ~{cut_off} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if (all_orfs) then "--all_orfs" else ""} \
      ~{if defined(upstream_incomplete_length) then ("--upstream_incomplete_length " +  '"' + upstream_incomplete_length + '"') else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if (force_overwrite) then "--force_overwrite" else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    output_path: "path to write output files. [OUTPUT_PATH].pep and\\n[OUTPUT_PATH].txt (default: input .fa file name)"
    strand: "Predict orfs for both strands"
    all_orfs: "Return all ORFs for each sequence longer than the"
    upstream_incomplete_length: "Minimum length (AA) of uninterupted sequence upstream\\nof ORF to be included for incomplete_5prime\\ntranscripts (default: 50)"
    batch_size: "Number of fasta records to read in in each batch"
    force_overwrite: "Force overwriting of output files?\\n"
    l: ""
    cut_off: "-l ORF_LENGTH, --orf_length ORF_LENGTH"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}