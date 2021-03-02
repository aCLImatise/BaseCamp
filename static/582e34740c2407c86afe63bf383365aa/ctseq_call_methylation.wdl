version 1.0

task CtseqCallMethylation {
  input {
    File? ref_dir
    File? dir
    Int? name_run
    Int? processes
    Float? cisc_g
    Int? molecule_threshold
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref_dir: "Full path to directory where you have already built\\nyour methylation reference files. If no '--refDir' is\\nspecified, ctseq will look in your current directory."
    dir: "Full path to directory where your '*allMolecules.txt'\\nfiles are located. If no '--dir' is specified, ctseq\\nwill look in your current directory."
    name_run: "number of reads needed to be counted as a unique\\nmolecule (required)"
    processes: "number of processes (default=1)"
    cisc_g: "cis-CG threshold to determine if a molecule is\\nmethylated (default=0.75)"
    molecule_threshold: "number of reads needed to be counted as a unique\\nmolecule (default=5)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}