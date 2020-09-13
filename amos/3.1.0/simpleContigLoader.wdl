version 1.0

task SimpleContigLoader {
  input {
    Boolean? be_verbose
    Boolean? append_contigs_instead
    Boolean? use_read_eids
    File bank_path
    File contig_file
  }
  command <<<
    simpleContigLoader \
      ~{bank_path} \
      ~{contig_file} \
      ~{if (be_verbose) then "-v" else ""} \
      ~{if (append_contigs_instead) then "-a" else ""} \
      ~{if (use_read_eids) then "-e" else ""}
  >>>
  parameter_meta {
    be_verbose: "Be Verbose"
    append_contigs_instead: "Append contigs instead of overwriting them"
    use_read_eids: "Use read eids instead of iids"
    bank_path: ""
    contig_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}