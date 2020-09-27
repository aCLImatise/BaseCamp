version 1.0

task GetConservedRegionspl {
  input {
    Boolean? size
    Boolean? bufsize
    Boolean? out_size
    Int? cons
    File? peak_regions_exclude
    Boolean? keep_exons
    File peak_file
    String genome_version
    String? additional
    String? options_dot_dot_dot
  }
  command <<<
    getConservedRegions_pl \
      ~{peak_file} \
      ~{genome_version} \
      ~{additional} \
      ~{options_dot_dot_dot} \
      ~{if (size) then "-size" else ""} \
      ~{if (bufsize) then "-bufSize" else ""} \
      ~{if (out_size) then "-outSize" else ""} \
      ~{if defined(cons) then ("-cons " +  '"' + cons + '"') else ""} \
      ~{if defined(peak_regions_exclude) then ("-p " +  '"' + peak_regions_exclude + '"') else ""} \
      ~{if (keep_exons) then "-keepExons" else ""}
  >>>
  parameter_meta {
    size: "<#|given> (size of region centered on peaks to look for conserved islands)\\ndefault: given"
    bufsize: "<#> (size of area around conserved islands to include)\\ndefault: 25"
    out_size: "<#> (size of conserved island segments to output [larger islands will be split])\\ndefault: 100"
    cons: "(phastCons score needed to define conservation island, 0=all used)\\ndefault: 0.8"
    peak_regions_exclude: "[peakfile2]... (peak regions to exclude)"
    keep_exons: "(By default, exons are excluded)"
    peak_file: ""
    genome_version: ""
    additional: ""
    options_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}