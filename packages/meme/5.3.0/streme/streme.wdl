version 1.0

task Streme {
  input {
    File? positive_sequence_file
    File? negative_sequence_file
    Int? km_er
    String? obj_fun
    Directory? output_directory_default
    String? oc
    Boolean? text
    Boolean? dna
    Boolean? rna
    Boolean? protein
    File? alph
    Int? min_w
    Int? max_w
    Int? sets_minwidth_maxwidth
    Int? n_eval
    Int? nref
    Int? niter
    Float? pvt
    Int? patience
    Int? n_motifs
    String? time
    Int? total_length
    Float? ho_fract
    Int? seed
    String? desc
    File? d_file
    Int? verbosity
  }
  command <<<
    streme \
      ~{if defined(positive_sequence_file) then ("--p " +  '"' + positive_sequence_file + '"') else ""} \
      ~{if defined(negative_sequence_file) then ("--n " +  '"' + negative_sequence_file + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(obj_fun) then ("--objfun " +  '"' + obj_fun + '"') else ""} \
      ~{if defined(output_directory_default) then ("--o " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (protein) then "--protein" else ""} \
      ~{if defined(alph) then ("--alph " +  '"' + alph + '"') else ""} \
      ~{if defined(min_w) then ("--minw " +  '"' + min_w + '"') else ""} \
      ~{if defined(max_w) then ("--maxw " +  '"' + max_w + '"') else ""} \
      ~{if defined(sets_minwidth_maxwidth) then ("--w " +  '"' + sets_minwidth_maxwidth + '"') else ""} \
      ~{if defined(n_eval) then ("--neval " +  '"' + n_eval + '"') else ""} \
      ~{if defined(nref) then ("--nref " +  '"' + nref + '"') else ""} \
      ~{if defined(niter) then ("--niter " +  '"' + niter + '"') else ""} \
      ~{if defined(pvt) then ("--pvt " +  '"' + pvt + '"') else ""} \
      ~{if defined(patience) then ("--patience " +  '"' + patience + '"') else ""} \
      ~{if defined(n_motifs) then ("--nmotifs " +  '"' + n_motifs + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(total_length) then ("--totallength " +  '"' + total_length + '"') else ""} \
      ~{if defined(ho_fract) then ("--hofract " +  '"' + ho_fract + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(desc) then ("--desc " +  '"' + desc + '"') else ""} \
      ~{if defined(d_file) then ("--dfile " +  '"' + d_file + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    positive_sequence_file: "positive sequence file name (required)"
    negative_sequence_file: "negative sequence file name;\\ndefault: if --n is not given, then STREME\\ncreates negative sequences by shuffling each of\\nthe positive sequences preserving the positions\\nof non-core characters and k-mer frequencies\\n(see --kmer, below; ignored if --objfun cd given)"
    km_er: "estimates an order k-1 background model for scoring\\nsites and preserves k-mer frequencies when creating\\nnegative sequences by shuffling positive sequences;\\ndefault: 3 (DNA), 3 (RNA), 1 (Protein), 1 (custom)"
    obj_fun: "|cd           objective function to optimize in motif discovery\\nde : Differential Enrichment\\ncd : Central Distance\\ndefault: de"
    output_directory_default: "output directory; default: 'streme_out'"
    oc: "allow overwriting; default: 'streme_out'"
    text: "output text only; overrides --o and --oc;\\ndefault: create text, HTML and XML files in <output_dir>"
    dna: "sequences use standard DNA alphabet (default)"
    rna: "sequences use standard RNA alphabet"
    protein: "sequences use standard protein alphabet"
    alph: "sequences use alphabet defined in <alph_file>;\\nconverts to uppercase unless both cases in core"
    min_w: "minimum width for motifs (must be >= 3);\\ndefault: 8"
    max_w: "maximum width for motifs (must be <= 30);\\ndefault: 15"
    sets_minwidth_maxwidth: "sets <minwidth> and <maxwidth> to <w> (must be <= 30);\\ndefault: see --minw and --maxw"
    n_eval: "evaluate <neval> seeds of each width;\\ndefault: 25"
    nref: "refine <nref> evaluated seeds of each width;\\nnref==0 means just evaluate single best seed;\\ndefault: 4"
    niter: "iterate refinement at most <niter> times per seed;\\ndefault: 20"
    pvt: "stop if hold-out set p-value greater than <pvt>\\n(see --patience and --hofract, below);\\noverrides --nmotifs;\\ndefault: 0.05"
    patience: "quit after <patience> consecutive motifs exceed <pvt>;\\ndefault: 3"
    n_motifs: "stop if <nmotifs> motifs have been output;\\noverrides --pvt if > 0;\\ndefault: quit when new motif p-values exceed <pvt>"
    time: "quit before <t> CPU seconds consumed;\\ndefault: no time limit"
    total_length: "truncate each sequence set to length <len>;\\ndefault: 0 (do not truncate)"
    ho_fract: "fraction of sequences in hold-out set;\\ndefault: 0.1"
    seed: "random seed for shuffling sequences;\\ndefault: 0"
    desc: "include this description text in HTML"
    d_file: "include contents of this description file in HTML,\\noverrides --desc"
    verbosity: "|2|3|4|5    level of diagnostic output (default: 2)\\n1: none 2: helpful 3: debug 4: tons 5: ludicrous\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}