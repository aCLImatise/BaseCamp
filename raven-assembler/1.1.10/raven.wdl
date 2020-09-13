version 1.0

task Raven {
  input {
    Boolean? weaken
    Int? polishing_rounds
    Int? match
    Int? mismatch
    Int? gap
    String? graphical_fragment_assembly
    Boolean? resume
    Int? threads
  }
  command <<<
    raven \
      ~{if (weaken) then "--weaken" else ""} \
      ~{if defined(polishing_rounds) then ("--polishing-rounds " +  '"' + polishing_rounds + '"') else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(graphical_fragment_assembly) then ("--graphical-fragment-assembly " +  '"' + graphical_fragment_assembly + '"') else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    weaken: "use larger (k, w) when assembling highly accurate sequences"
    polishing_rounds: "default: 2\\nnumber of times racon is invoked"
    match: "default: 3\\nscore for matching bases"
    mismatch: "default: -5\\nscore for mismatching bases"
    gap: "default: -4\\ngap penalty (must be negative)"
    graphical_fragment_assembly: "prints the assemblg graph in GFA format"
    resume: "resume previous run from last checkpoint"
    threads: "default: 1\\nnumber of threads"
  }
  output {
    File out_stdout = stdout()
  }
}