version 1.0

task Snakefmt {
  input {
    Int? line_length
    Boolean? check
    File? diff
    Boolean? compact_diff
    String? include
    String? exclude
    File? config
    Boolean? verbose
    String provided_dot
  }
  command <<<
    snakefmt \
      ~{provided_dot} \
      ~{if defined(line_length) then ("--line-length " +  '"' + line_length + '"') else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if (diff) then "--diff" else ""} \
      ~{if (compact_diff) then "--compact-diff" else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/snakefmt:0.3.1--py_0"
  }
  parameter_meta {
    line_length: "Lines longer than INT will be wrapped. [default: 88]"
    check: "Don't write the files back, just return the status.\\nReturn code 0 means nothing would change. Return code\\n1 means some files would be reformatted. Return code\\n123 means there was an error."
    diff: "Don't write the files back, just output a diff for\\neach file to stdout."
    compact_diff: "Same as --diff but only shows lines that would change\\nplus a few lines of context."
    include: "A regular expression that matches files and\\ndirectories that should be included on recursive\\nsearches.  An empty value means all files are\\nincluded regardless of the name.  Use forward slashes\\nfor directories on all platforms (Windows, too).\\nExclusions are calculated first, inclusions later.\\n[default: (\\.smk$|^Snakefile)]"
    exclude: "A regular expression that matches files and\\ndirectories that should be excluded on recursive\\nsearches.  An empty value means no paths are\\nexcluded. Use forward slashes for directories on all\\nplatforms (Windows, too). Exclusions are calculated\\nfirst, inclusions later.  [default: (\\.snakemake|\\.eg\\ngs|\\.git|\\.hg|\\.mypy_cache|\\.nox|\\.tox|\\.venv|\\.svn|_\\nbuild|buck-out|build|dist)]"
    config: "Read configuration from PATH. By default, will try to\\nread from `./pyproject.toml`"
    verbose: "Turns on debug-level logger."
    provided_dot: "Files are modified in-place by default; use diff, check, or  `snakefmt - <"
  }
  output {
    File out_stdout = stdout()
    File out_diff = "${in_diff}"
  }
}