version 1.0

task RemoveCallersFromSomaticseqTsv.py {
  input {
    String? in_file
    Boolean? outfile
  }
  command <<<
    remove_callers_from_somaticseq_tsv.py \
      ~{if defined(in_file) then ("-infile " +  '"' + in_file + '"') else ""} \
      ~{true="-outfile" false="" outfile}
  >>>
  parameter_meta {
    in_file: ""
    outfile: ""
  }
}