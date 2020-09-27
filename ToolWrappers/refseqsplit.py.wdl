version 1.0

task Refseqsplitpy {
  input {
    File? file
    String? dir
    String? prefix
    String? allow_only_entries
    String? forbid_entries_tax
    Boolean? increment_output_verbosity
  }
  command <<<
    refseqsplit_py \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(allow_only_entries) then ("-t " +  '"' + allow_only_entries + '"') else ""} \
      ~{if defined(forbid_entries_tax) then ("-T " +  '"' + forbid_entries_tax + '"') else ""} \
      ~{if (increment_output_verbosity) then "-v" else ""}
  >>>
  parameter_meta {
    file: "read from FILE"
    dir: "write files to DIR"
    prefix: "only take accession with prefix PFX (default: NC)"
    allow_only_entries: "allow only entries with TAX in the taxonomy"
    forbid_entries_tax: "forbid all entries with TAX in the taxonomy"
    increment_output_verbosity: "increment output verbosity; may be specified multiple\\ntimes\\n"
  }
  output {
    File out_stdout = stdout()
  }
}