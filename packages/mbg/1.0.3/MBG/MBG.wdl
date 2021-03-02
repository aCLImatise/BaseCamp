version 1.0

task MBG {
  input {
    String? in
    String? out
    Int? number_threads_default
    Int? kmer_size_be
    Int? window_size_be
    Int? km_er_abundance
    Int? unit_ig_abundance
    Boolean? no_hpc
    Boolean? collapse_hpc
    Boolean? blunt
    Boolean? v
    String k_mer
    Int number
    String window
    String of
    Int size_dot
    String must
    String threads
    String be
    Int one
    String odd
    String and
  }
  command <<<
    MBG \
      ~{k_mer} \
      ~{number} \
      ~{window} \
      ~{of} \
      ~{size_dot} \
      ~{must} \
      ~{threads} \
      ~{be} \
      ~{one} \
      ~{odd} \
      ~{and} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""} \
      ~{if defined(kmer_size_be) then ("-k " +  '"' + kmer_size_be + '"') else ""} \
      ~{if defined(window_size_be) then ("-w " +  '"' + window_size_be + '"') else ""} \
      ~{if defined(km_er_abundance) then ("--kmer-abundance " +  '"' + km_er_abundance + '"') else ""} \
      ~{if defined(unit_ig_abundance) then ("--unitig-abundance " +  '"' + unit_ig_abundance + '"') else ""} \
      ~{if (no_hpc) then "--no-hpc" else ""} \
      ~{if (collapse_hpc) then "--collapse-hpc" else ""} \
      ~{if (blunt) then "--blunt" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mbg:1.0.3--he513fc3_0"
  }
  parameter_meta {
    in: "Input reads. Multiple files can be input with"
    out: "Output graph (required)"
    number_threads_default: "Number of threads (default: 1)"
    kmer_size_be: "K-mer size. Must be odd and >=31 (required)"
    window_size_be: "Window size. Must be 1 <= w <= k-30 (required)"
    km_er_abundance: "Minimum k-mer abundance (default: 1)"
    unit_ig_abundance: "Minimum average unitig abundace and edge\\nabundance (default: 2)"
    no_hpc: "Don't use homopolymer compression"
    collapse_hpc: "Collapse homopolymer runs to one character\\ninstead of taking consensus"
    blunt: "Output a bluntified graph without edge overlaps"
    v: ""
    k_mer: ""
    number: ""
    window: ""
    of: ""
    size_dot: ""
    must: ""
    threads: ""
    be: ""
    one: ""
    odd: ""
    and: ""
  }
  output {
    File out_stdout = stdout()
  }
}