version 1.0

task Iuvisualizeplotdicts {
  input {
    String? dest
    String? title
    Boolean? split_tiles
  }
  command <<<
    iu_visualize_plot_dicts \
      ~{if defined(dest) then ("--dest " +  '"' + dest + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (split_tiles) then "--split-tiles" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-utils:2.10--py_0"
  }
  parameter_meta {
    dest: "Figure destination"
    title: "Title to appear at the top of the figure"
    split_tiles: "When set, quality curves will be shown separately for\\neach tile\\n"
  }
  output {
    File out_stdout = stdout()
  }
}