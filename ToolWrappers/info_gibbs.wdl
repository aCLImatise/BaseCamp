version 1.0

task Infogibbs {
  input {
    Boolean? _verbosity_set
    Boolean? _input_read
    Boolean? _width_set
    Boolean? max_spacing
    Boolean? min_spacing
    Boolean? _strand_search
    Boolean? _iter_maximum
    Boolean? sites
    Boolean? _meansps_mean
    Boolean? z_oops
    Boolean? _motifs_number
    Boolean? _bgfile_use
    Boolean? _dmin_set
    Boolean? set_temperature_should
    Boolean? _nrun_try
    Boolean? collect
    Boolean? seed_matrix
    Boolean? seed_matrix_sites
    Boolean? flanks
    Boolean? r_seed
    Boolean? title
    String info_gibbs
    Int author
    String sequences
  }
  command <<<
    info_gibbs \
      ~{info_gibbs} \
      ~{author} \
      ~{sequences} \
      ~{if (_verbosity_set) then "-v" else ""} \
      ~{if (_input_read) then "-i" else ""} \
      ~{if (_width_set) then "-w" else ""} \
      ~{if (max_spacing) then "--maxspacing" else ""} \
      ~{if (min_spacing) then "--minspacing" else ""} \
      ~{if (_strand_search) then "-s" else ""} \
      ~{if (_iter_maximum) then "-n" else ""} \
      ~{if (sites) then "--sites" else ""} \
      ~{if (_meansps_mean) then "-e" else ""} \
      ~{if (z_oops) then "--zoops" else ""} \
      ~{if (_motifs_number) then "-m" else ""} \
      ~{if (_bgfile_use) then "-b" else ""} \
      ~{if (_dmin_set) then "-d" else ""} \
      ~{if (set_temperature_should) then "-t" else ""} \
      ~{if (_nrun_try) then "-r" else ""} \
      ~{if (collect) then "--collect" else ""} \
      ~{if (seed_matrix) then "--seedmatrix" else ""} \
      ~{if (seed_matrix_sites) then "--seedmatrix_sites" else ""} \
      ~{if (flanks) then "--flanks" else ""} \
      ~{if (r_seed) then "--rseed" else ""} \
      ~{if (title) then "--title" else ""}
  >>>
  parameter_meta {
    _verbosity_set: "#, --verbosity=#   set verbosity to level #\\n0 no verbosity\\n1 low verbosity\\n2 high verbosity\\n3 maximal verbosity + debug + trace"
    _input_read: "#, --input=#       read sequence from # (must be in FASTA format)\\nif not specified, the standard input is used"
    _width_set: "#, --width=#       set the motif width to #\\nwhen the option dyad is used # represents the length monad1 + monad2\\nEXAMPLE: --length=7"
    max_spacing: "=#        set maximal spacing between motif monad to # (only for dyadic motif).\\nin this case the parameter -l corresponds to length of monad1 + monad2 (without spacing)"
    min_spacing: "=#        set minimal spacing between motif monad to # (only for dyadic motif).\\nin this case the parameter -l corresponds to length of monad1 + monad2 (without spacing)"
    _strand_search: "#, --strand=#      search in foward strand + or in both strands +-\\nEXAMPLE: --strand=+"
    _iter_maximum: "#, --iter=#        maximum number of Gibbs sampling iterations"
    sites: "=#             number of motif occurrences that are expected to\\nbe found (incompatible with -e)"
    _meansps_mean: "#, --mean_sps=#    mean number of motif occurrences (sites) expected per sequence\\nthat are expected to be found (incompatible with --sites)\\nDEFAULT: 1"
    z_oops: "try to find 0 or 1 site per sequence"
    _motifs_number: "#, --motifs=#      number of motifs to extract (one by default)"
    _bgfile_use: "#, --bgfile=#      use # predefined INCLUSive background model\\n[http://homes.esat.kuleuven.be/~thijs/help/help_motifsampler.html#background]\\nEXAMPLE --bgfile=mybgfile"
    _dmin_set: "#, --dmin=#        set minimal distance between 2 motif occurrences to #"
    set_temperature_should: "#                  set the temperature (should be in range [0.6 1.4])\\nDEFAULT: 1.0"
    _nrun_try: "#  --nrun=#        try to run the Gibbs sampling seach # times"
    collect: "try to collect the N best sites using their weight scores\\n(during the collection --dmin and --zoops are not taken into account)"
    seed_matrix: "=#        start sampling form sites collected by scanning the sequences with matrix #"
    seed_matrix_sites: "=#  when using seed matrix specify the number of sites for each matrix (n1,n2,n3)"
    flanks: "=#            when using --seedmatrix add extra # positions around the matrix"
    r_seed: "=#             set random seed to #"
    title: "=#             add title # to output"
    info_gibbs: "VERSION"
    author: "AUTHOR"
    sequences: "motif discovery"
  }
  output {
    File out_stdout = stdout()
  }
}