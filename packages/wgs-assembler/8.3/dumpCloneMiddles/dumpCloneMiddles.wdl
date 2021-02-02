version 1.0

task DumpCloneMiddles {
  input {
    String? _attempt_guess
    Boolean? ctg
    Boolean? scf
    String? ovlstorenamec_ckptfilenamen_ckpptnum
    String? _generate_contig
    Int? _generate_only
    Boolean? _suppress_surrogate
    String? n
    String? c
    String? o
    String? other
  }
  command <<<
    dumpCloneMiddles \
      ~{other} \
      ~{if defined(_attempt_guess) then ("-p " +  '"' + _attempt_guess + '"') else ""} \
      ~{if (ctg) then "-ctg" else ""} \
      ~{if (scf) then "-scf" else ""} \
      ~{if defined(ovlstorenamec_ckptfilenamen_ckpptnum) then ("-g " +  '"' + ovlstorenamec_ckptfilenamen_ckpptnum + '"') else ""} \
      ~{if defined(_generate_contig) then ("-i " +  '"' + _generate_contig + '"') else ""} \
      ~{if defined(_generate_only) then ("-l " +  '"' + _generate_only + '"') else ""} \
      ~{if (_suppress_surrogate) then "-S" else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    _attempt_guess: "-- attempt to guess all the required options, if your assembly\\nfollows runCA-OBT naming conventions."
    ctg: "-- dump contigs"
    scf: "-- dump scaffolds"
    ovlstorenamec_ckptfilenamen_ckpptnum: "-o <OVLStoreName>\\n-c <CkptFileName>\\n-n <CkpPtNum>"
    _generate_contig: "-- generate a single contig or scaffold"
    _generate_only: "-- generate only scaffolds larger than min length"
    _suppress_surrogate: "-- suppress surrogate fragment placement (possibly multiple placements per frg)"
    n: ""
    c: ""
    o: ""
    other: ""
  }
  output {
    File out_stdout = stdout()
  }
}