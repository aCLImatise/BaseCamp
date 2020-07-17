version 1.0

task RsegDiff {
  input {
    Boolean? out
    Boolean? score
    Boolean? read_count
    Boolean? boundary
    Boolean? boundary_score
    Boolean? chrom
    Boolean? dead_zones
    Boolean? bam
    Boolean? param_in
    Boolean? param_out
    Boolean? mode
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
    Boolean? training_size
    Boolean? posterior
    Boolean? posterior_cut_off
    Boolean? undefined
    Boolean? cut_off
    Boolean? verbose
    Boolean? about
    String mapped_read_locations_a
    String mapped_read_locations_b
  }
  command <<<
    rseg-diff \
      ~{mapped_read_locations_a} \
      ~{mapped_read_locations_b} \
      ~{true="-out" false="" out} \
      ~{true="-score" false="" score} \
      ~{true="-readcount" false="" read_count} \
      ~{true="-boundary" false="" boundary} \
      ~{true="-boundary-score" false="" boundary_score} \
      ~{true="-chrom" false="" chrom} \
      ~{true="-deadzones" false="" dead_zones} \
      ~{true="-bam" false="" bam} \
      ~{true="-param-in" false="" param_in} \
      ~{true="-param-out" false="" param_out} \
      ~{true="-mode" false="" mode} \
      ~{true="-maxitr" false="" max_it_r} \
      ~{true="-bin-size" false="" bin_size} \
      ~{true="-bin-step" false="" bin_step} \
      ~{true="-duplicates" false="" duplicates} \
      ~{true="-fragment_length" false="" fragment_length} \
      ~{true="-Waterman" false="" waterman} \
      ~{true="-Hideaki" false="" hideaki} \
      ~{true="-Hideaki-emp" false="" hideaki_emp} \
      ~{true="-smooth" false="" smooth} \
      ~{true="-max-dead" false="" max_dead} \
      ~{true="-domain-size" false="" domain_size} \
      ~{true="-desert" false="" desert} \
      ~{true="-fg" false="" fg} \
      ~{true="-bg" false="" bg} \
      ~{true="-training-size" false="" training_size} \
      ~{true="-posterior" false="" posterior} \
      ~{true="-posterior-cutoff" false="" posterior_cut_off} \
      ~{true="-undefined" false="" undefined} \
      ~{true="-cutoff" false="" cut_off} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    out: "domain output file "
    score: "Posterior scores file "
    read_count: "readcounts file "
    boundary: "domain boundary file "
    boundary_score: "boundary transition scores file "
    chrom: "file with chromosome sizes (BED format) "
    dead_zones: "file of deadzones (BED format) "
    bam: "Input reads file is BAM format "
    param_in: "Input parameters file "
    param_out: "Output parameters file "
    mode: "running mode 2:test-control; 3: test-test "
    max_it_r: "maximum iterations for training "
    bin_size: "bin size (default: based on data) "
    bin_step: "minimum bin size (default: 50) "
    duplicates: "keep duplicate reads "
    fragment_length: "Extend reads to fragment length (default not to  extend) "
    waterman: "use Waterman's method for bin size "
    hideaki: "use Hideaki's method for bin size "
    hideaki_emp: "use Hideaki's empirical method (default) "
    smooth: "Indicate whether the rate curve is assumed smooth "
    max_dead: "max deadzone proportion for retained bins "
    domain_size: "expected domain size (default: 20000) "
    desert: "desert size (default: 20000) "
    fg: "foreground emission distribution "
    bg: "background emission distribution "
    training_size: "Max number of data points for training (default: all) "
    posterior: "use posterior decoding (default: Viterbi) "
    posterior_cut_off: "Posterior threshold for signigicant bins "
    undefined: "min size of unmappable region "
    cut_off: "cutoff in cdf for identified domains "
    verbose: "print more run information "
    about: "print about message "
    mapped_read_locations_a: ""
    mapped_read_locations_b: ""
  }
}