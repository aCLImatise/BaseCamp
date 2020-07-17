version 1.0

task CtseqCallMethylation {
  input {
    String? ref_dir
    String? dir
    String? name_run
    String? processes
    String? cisc_g
    String? molecule_threshold
  }
  command <<<
    ctseq call_methylation \
      ~{if defined(ref_dir) then ("--refDir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(name_run) then ("--nameRun " +  '"' + name_run + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(cisc_g) then ("--cisCG " +  '"' + cisc_g + '"') else ""} \
      ~{if defined(molecule_threshold) then ("--moleculeThreshold " +  '"' + molecule_threshold + '"') else ""}
  >>>
  parameter_meta {
    ref_dir: "Full path to directory where you have already built your methylation reference files. If no '--refDir' is specified, ctseq will look in your current directory."
    dir: "Full path to directory where your '*allMolecules.txt' files are located. If no '--dir' is specified, ctseq will look in your current directory."
    name_run: "number of reads needed to be counted as a unique molecule (required)"
    processes: "number of processes (default=1)"
    cisc_g: "cis-CG threshold to determine if a molecule is methylated (default=0.75)"
    molecule_threshold: "number of reads needed to be counted as a unique molecule (default=5)"
  }
}