version 1.0

task Enr {
  input {
    File? positive_sequence_file
    File? motif_file_name
    String? obj_fun
    File? negative_sequence_file
    Int? km_er
    Boolean? dna
    Boolean? rna
    Boolean? protein
    File? alph
    Float? ho_fract
    Int? seed
    File? b_file
    Int? pseudo_count
    String? inc
    String? exc
    Int? verbosity
  }
  command <<<
    enr \
      ~{if defined(positive_sequence_file) then ("--p " +  '"' + positive_sequence_file + '"') else ""} \
      ~{if defined(motif_file_name) then ("--m " +  '"' + motif_file_name + '"') else ""} \
      ~{if defined(obj_fun) then ("--objfun " +  '"' + obj_fun + '"') else ""} \
      ~{if defined(negative_sequence_file) then ("--n " +  '"' + negative_sequence_file + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (protein) then "--protein" else ""} \
      ~{if defined(alph) then ("--alph " +  '"' + alph + '"') else ""} \
      ~{if defined(ho_fract) then ("--hofract " +  '"' + ho_fract + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{if defined(pseudo_count) then ("--pseudocount " +  '"' + pseudo_count + '"') else ""} \
      ~{if defined(inc) then ("--inc " +  '"' + inc + '"') else ""} \
      ~{if defined(exc) then ("--exc " +  '"' + exc + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    positive_sequence_file: "positive sequence file name (required)"
    motif_file_name: "motif file name (required, may be repeated)"
    obj_fun: "|cd           objective function (<objfun>)\\nde : Differential Enrichment\\ncd : Central Distance\\ndefault: de"
    negative_sequence_file: "negative sequence file name;\\ndefaults: if --n is not given, then STREME\\ncreates negative sequences as follows:\\n<objfun> = de, shuffle positive sequences\\n= cd, no negative sequences allowed"
    km_er: "shuffle positive sequences preserving k-mers\\nand the positions of the non-core characters\\ndefault: 3 (DNA), 3 (RNA), 1 (Prot), 1 (custom)\\ndefault: create text, HTML and XML files in <output_dir>"
    dna: "sequences use standard DNA alphabet (default)"
    rna: "sequences use standard RNA alphabet"
    protein: "sequences use standard protein alphabet"
    alph: "sequences use alphabet defined in <alph_file>;\\nconverts to uppercase unless both cases in core"
    ho_fract: "fraction of sequences in hold-out set;\\ndefault: 0.1"
    seed: "random seed for shuffling sequences;\\ndefault: -1718334814"
    b_file: "background model file; default: motif file freqs"
    pseudo_count: "pseudocount for creating PWMs from motifs;\\ndefault: 0"
    inc: "name pattern to select as motif; may be\\nrepeated; default: all motifs are used"
    exc: "name pattern to exclude as motif; may be\\nrepeated; default: all motifs are used"
    verbosity: "|2|3|4|5    level of diagnostic output (default: -1718334814)"
  }
  output {
    File out_stdout = stdout()
  }
}