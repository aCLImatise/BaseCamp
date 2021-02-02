version 1.0

task Pathogenprofilergatherpy {
  input {
    String? samples
    String? dir
    String? matrix
    String? fast_a
    String? summary
    Boolean? it_ol
    Boolean? pct
  }
  command <<<
    pathogen_profiler_gather_py \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if (it_ol) then "--itol" else ""} \
      ~{if (pct) then "--pct" else ""}
  >>>
  parameter_meta {
    samples: "NGS Platform (default: None)"
    dir: "NGS Platform (default: pp-results)"
    matrix: "NGS Platform (default: None)"
    fast_a: "NGS Platform (default: None)"
    summary: "NGS Platform (default: None)"
    it_ol: "NGS Platform (default: False)"
    pct: "NGS Platform (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}