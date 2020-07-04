version 1.0

task GetBlastHits.sh {
  input {
    Boolean? force_symbolic_links
    Boolean? use_physical_structure
    Boolean? p_option_supplied
    Boolean? at
  }
  command <<<
    get_blast_hits.sh \
      ~{true="-L" false="" force_symbolic_links} \
      ~{true="-P" false="" use_physical_structure} \
      ~{true="-e" false="" p_option_supplied} \
      ~{true="-@" false="" at}
  >>>
  parameter_meta {
    force_symbolic_links: "force symbolic links to be followed: resolve symbolic links in DIR after processing instances of `..'"
    use_physical_structure: "use the physical directory structure without following symbolic links: resolve symbolic links in DIR before processing instances of `..'"
    p_option_supplied: "if the -P option is supplied, and the current working directory cannot be determined successfully, exit with a non-zero status"
    at: "on systems that support it, present a file with extended attributes as a directory containing the file attributes"
  }
}