version 1.0

task Rseg {
  input {
    File? out
    Boolean? score
    Boolean? read_count
    Boolean? boundary
    Boolean? boundary_score
    Boolean? chrom
    Boolean? dead_zones
    Boolean? bam
    Boolean? param_in
    File? param_out
    Boolean? max_it_r
    Boolean? bin_size
    Boolean? bin_step
    Boolean? duplicates
    Boolean? fragment_length
    Boolean? waterman
    Boolean? hideaki
    Boolean? hideaki_emp
    Boolean? smooth
    Boolean? max_dead
    Boolean? domain_size
    Boolean? desert
    Boolean? fg
    Boolean? bg
    Boolean? posterior
    Boolean? posterior_cut_off
    Boolean? undefined
    Boolean? cut_off
    Boolean? verbose
    Boolean? about
    String mapped_read_locations
  }
  command <<<
    rseg \
      ~{mapped_read_locations} \
      ~{if (out) then "-out" else ""} \
      ~{if (score) then "-score" else ""} \
      ~{if (read_count) then "-readcount" else ""} \
      ~{if (boundary) then "-boundary" else ""} \
      ~{if (boundary_score) then "-boundary-score" else ""} \
      ~{if (chrom) then "-chrom" else ""} \
      ~{if (dead_zones) then "-deadzones" else ""} \
      ~{if (bam) then "-bam" else ""} \
      ~{if (param_in) then "-param-in" else ""} \
      ~{if (param_out) then "-param-out" else ""} \
      ~{if (max_it_r) then "-maxitr" else ""} \
      ~{if (bin_size) then "-bin-size" else ""} \
      ~{if (bin_step) then "-bin-step" else ""} \
      ~{if (duplicates) then "-duplicates" else ""} \
      ~{if (fragment_length) then "-fragment_length" else ""} \
      ~{if (waterman) then "-Waterman" else ""} \
      ~{if (hideaki) then "-Hideaki" else ""} \
      ~{if (hideaki_emp) then "-Hideaki-emp" else ""} \
      ~{if (smooth) then "-smooth" else ""} \
      ~{if (max_dead) then "-max-dead" else ""} \
      ~{if (domain_size) then "-domain-size" else ""} \
      ~{if (desert) then "-desert" else ""} \
      ~{if (fg) then "-fg" else ""} \
      ~{if (bg) then "-bg" else ""} \
      ~{if (posterior) then "-posterior" else ""} \
      ~{if (posterior_cut_off) then "-posterior-cutoff" else ""} \
      ~{if (undefined) then "-undefined" else ""} \
      ~{if (cut_off) then "-cutoff" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  parameter_meta {
    out: "domain output file"
    score: "Posterior scores file"
    read_count: "readcounts file"
    boundary: "domain boundary file"
    boundary_score: "boundary transition scores file"
    chrom: "file with chromosome sizes (BED format)"
    dead_zones: "file of deadzones (BED format)"
    bam: "Input reads file is BAM format"
    param_in: "Input parameters file"
    param_out: "Output parameters file"
    max_it_r: "maximum iterations for training"
    bin_size: "bin size (default: based on data)"
    bin_step: "minimum bin size (default: 50)"
    duplicates: "keep duplicate reads"
    fragment_length: "Extend reads to fragment length (default not to\\nextend)"
    waterman: "use Waterman's method for bin size"
    hideaki: "use Hideaki's method for bin size"
    hideaki_emp: "use Hideaki's empirical method (default)"
    smooth: "Indicate whether the rate curve is assumed smooth"
    max_dead: "max deadzone proportion for retained bins"
    domain_size: "expected domain size (default: 20000)"
    desert: "desert size (default: 20000)"
    fg: "foreground emission distribution"
    bg: "background emission distribution"
    posterior: "use posterior decoding (default: Viterbi)"
    posterior_cut_off: "posterior cutoff significance"
    undefined: "min size of unmappable region"
    cut_off: "cutoff in cdf for identified domains"
    verbose: "print more run information"
    about: "print about message"
    mapped_read_locations: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_param_out = "${in_param_out}"
  }
}