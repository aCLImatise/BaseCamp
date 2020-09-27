version 1.0

task Msa2prflpl {
  input {
    Int? width
    File? alternative_file_containing
    String? max_entropy
    Boolean? keep_empty
    String? prefix_from_seq_names
    Boolean? relax
    File? block_score_file
    String? setname
    String? set_desc
    String? set_acc
    File? info
    String converts
    String uses
    String? options
    String variable
    String augustus_config_path
    String a
    String protein
    String blosum
    String multiple
    String block
    String subdirectory
    String sequence
    String of
    String profile
    String var_25
    String alignment
    String matrix
    String that
    String can
    String in
    String to
    String fast_a
    String be
    String calculate
    String or
    String pseudo_counts
    String used
    String clustal
    String var_as
    String which
    String format
    String var_input
    String is
    String for
    String searched
  }
  command <<<
    msa2prfl_pl \
      ~{converts} \
      ~{uses} \
      ~{options} \
      ~{variable} \
      ~{augustus_config_path} \
      ~{a} \
      ~{protein} \
      ~{blosum} \
      ~{multiple} \
      ~{block} \
      ~{subdirectory} \
      ~{sequence} \
      ~{of} \
      ~{profile} \
      ~{var_25} \
      ~{alignment} \
      ~{matrix} \
      ~{that} \
      ~{can} \
      ~{in} \
      ~{to} \
      ~{fast_a} \
      ~{be} \
      ~{calculate} \
      ~{or} \
      ~{pseudo_counts} \
      ~{used} \
      ~{clustal} \
      ~{var_as} \
      ~{which} \
      ~{format} \
      ~{var_input} \
      ~{is} \
      ~{for} \
      ~{searched} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(alternative_file_containing) then ("--qij " +  '"' + alternative_file_containing + '"') else ""} \
      ~{if defined(max_entropy) then ("--max_entropy " +  '"' + max_entropy + '"') else ""} \
      ~{if (keep_empty) then "--keep_empty" else ""} \
      ~{if defined(prefix_from_seq_names) then ("--prefix_from_seqnames " +  '"' + prefix_from_seq_names + '"') else ""} \
      ~{if (relax) then "--relax" else ""} \
      ~{if defined(block_score_file) then ("--blockscorefile " +  '"' + block_score_file + '"') else ""} \
      ~{if defined(setname) then ("--setname " +  '"' + setname + '"') else ""} \
      ~{if defined(set_desc) then ("--setdesc " +  '"' + set_desc + '"') else ""} \
      ~{if defined(set_acc) then ("--setacc " +  '"' + set_acc + '"') else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""}
  >>>
  parameter_meta {
    width: "minimal block width (default: 6)"
    alternative_file_containing: "alternative file containing BLOSUM q_ij matrix"
    max_entropy: "maximal entropy of a block column (default: disabled)"
    keep_empty: "do not remove empty columns from alignment"
    prefix_from_seq_names: "MSA contains partial sequences, determine\\nsequence offset from sequence name as in XXXX/<from>-<to>"
    relax: "consider MSA as partial (allow arbitrary distance at\\nbeginning and end)"
    block_score_file: "create a log file with blocks from the MSA and their scores"
    setname: "set a name for the profile"
    set_desc: "set a description for the profile"
    set_acc: "set an accession id for the profile"
    info: "provide a text file containing the meta information"
    converts: ""
    uses: ""
    options: ""
    variable: ""
    augustus_config_path: ""
    a: ""
    protein: ""
    blosum: ""
    multiple: ""
    block: ""
    subdirectory: ""
    sequence: ""
    of: ""
    profile: ""
    var_25: ""
    alignment: ""
    matrix: ""
    that: ""
    can: ""
    in: ""
    to: ""
    fast_a: ""
    be: ""
    calculate: ""
    or: ""
    pseudo_counts: ""
    used: ""
    clustal: ""
    var_as: ""
    which: ""
    format: ""
    var_input: ""
    is: ""
    for: ""
    searched: ""
  }
  output {
    File out_stdout = stdout()
  }
}