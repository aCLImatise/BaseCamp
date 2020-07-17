version 1.0

task Runmitos.py {
  input {
    File? the_input_file
    String? fast_a
    String? code
    String? outdir
    Boolean? linear
    String? refseq_ver
    String? ref_dir
    String? prot
    String? trna
    String? rrna
    Int? intron
    String? or_il
    String? or_ih
    String? fi_nov_l
    String? circ_rot
    Boolean? best
    String? frag_fac
    String? frag_ovl
    Boolean? no_plots
    String? evalue
    String? cut_off
    String? clip_fac
    Boolean? ncbi_code
    Boolean? al_arab
    Boolean? old_stst
    Boolean? loc_and_glo_c
    String? nc_ev
    Boolean? sensitive
    String? max_trna_ovl
    String? max_rrna_ovl
    Boolean? debug
    String? json
  }
  command <<<
    runmitos.py \
      ~{if defined(the_input_file) then ("--input " +  '"' + the_input_file + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(code) then ("--code " +  '"' + code + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--linear" false="" linear} \
      ~{if defined(refseq_ver) then ("--refseqver " +  '"' + refseq_ver + '"') else ""} \
      ~{if defined(ref_dir) then ("--refdir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(prot) then ("--prot " +  '"' + prot + '"') else ""} \
      ~{if defined(trna) then ("--trna " +  '"' + trna + '"') else ""} \
      ~{if defined(rrna) then ("--rrna " +  '"' + rrna + '"') else ""} \
      ~{if defined(intron) then ("--intron " +  '"' + intron + '"') else ""} \
      ~{if defined(or_il) then ("--oril " +  '"' + or_il + '"') else ""} \
      ~{if defined(or_ih) then ("--orih " +  '"' + or_ih + '"') else ""} \
      ~{if defined(fi_nov_l) then ("--finovl " +  '"' + fi_nov_l + '"') else ""} \
      ~{if defined(circ_rot) then ("--circrot " +  '"' + circ_rot + '"') else ""} \
      ~{true="--best" false="" best} \
      ~{if defined(frag_fac) then ("--fragfac " +  '"' + frag_fac + '"') else ""} \
      ~{if defined(frag_ovl) then ("--fragovl " +  '"' + frag_ovl + '"') else ""} \
      ~{true="--noplots" false="" no_plots} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(clip_fac) then ("--clipfac " +  '"' + clip_fac + '"') else ""} \
      ~{true="--ncbicode" false="" ncbi_code} \
      ~{true="--alarab" false="" al_arab} \
      ~{true="--oldstst" false="" old_stst} \
      ~{true="--locandgloc" false="" loc_and_glo_c} \
      ~{if defined(nc_ev) then ("--ncev " +  '"' + nc_ev + '"') else ""} \
      ~{true="--sensitive" false="" sensitive} \
      ~{if defined(max_trna_ovl) then ("--maxtrnaovl " +  '"' + max_trna_ovl + '"') else ""} \
      ~{if defined(max_rrna_ovl) then ("--maxrrnaovl " +  '"' + max_rrna_ovl + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""}
  >>>
  parameter_meta {
    the_input_file: "the input file"
    fast_a: "input fasta sequence"
    code: "the genetic code"
    outdir: "the directory where the output is written"
    linear: "treat sequence as linear"
    refseq_ver: "directory containing the reference data (relative to --refdir)"
    ref_dir: "base directory containing the reference data"
    prot: "position of protein prediction in 1st round (0: skip)"
    trna: "position of tRNA prediction in 1st round (0: skip)"
    rrna: "position of rRNA prediction in 1st round (0: skip)"
    intron: "position of intron prediction in 1st round (0: skip)"
    or_il: "position of OL prediction in 1st round (0: skip)"
    or_ih: "position of OH prediction in 1st round (0: skip)"
    fi_nov_l: "final overlap <= NRNT nucleotides"
    circ_rot: "cir circular: rotate mitogenome by DEG and DEG+180"
    best: "annotate only the best copy of each feature"
    frag_fac: "allow fragments to differ in quality/evalue by at most a factor FACTOR. Ignored if <= 0."
    frag_ovl: "allow query range overlaps up for FRACTION for fragments"
    no_plots: "do not create the plots."
    evalue: "discard BLAST hits with -1*log(e-value)<EVL (EVL < 1 has no effect)"
    cut_off: "discard positions with quality <.5 of max"
    clip_fac: "overlapping features of the same name differing by at most a factor of FACTOR are clipped"
    ncbi_code: "use start/stop codons as in NCBI (default: learned start/stop codons)"
    al_arab: "Use the hmmer based method of Al Arab et al. 2016. This will consider the evalue, ncbicode, fragovl, fragfac"
    old_stst: "Use the old start/stop prediction method of MITOS1"
    loc_and_glo_c: "run mitfi in glocal and local mode (default: local only)"
    nc_ev: "evalue to use for inferal fast mode"
    sensitive: "use infernals sensitive mode only"
    max_trna_ovl: "allow tRNA overlap of up to X nt for mitfi"
    max_rrna_ovl: "allow rRNA overlap of up to X nt for mitfi"
    debug: "print debug output"
    json: "a JSON file with parameters. then outdir is the only other argument needed."
  }
}