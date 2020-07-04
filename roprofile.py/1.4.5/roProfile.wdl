version 1.0

task RoProfile.py {
  input {
    String? roar_y
    String? gff_dir
    Boolean? core
    Boolean? transpose
    Boolean? th
    Boolean? gene_file
    String? threshold
  }
  command <<<
    roProfile.py \
      ~{threshold} \
      ~{if defined(roar_y) then ("--roary " +  '"' + roar_y + '"') else ""} \
      ~{if defined(gff_dir) then ("--gffdir " +  '"' + gff_dir + '"') else ""} \
      ~{true="--core" false="" core} \
      ~{true="--transpose" false="" transpose} \
      ~{true="-th" false="" th} \
      ~{true="--genefile" false="" gene_file}
  >>>
  parameter_meta {
    roar_y: "Path to directory containing all output files from Roary."
    gff_dir: "Path to directory containing all gff files used in the Roary analysis."
    core: "Generate profile file for the core-genome only, with genes present in all isolates."
    transpose: "Transpose the gene presence absence rtab file from roary to be used as profile. It will also generate a clean gene_presence_absence file, without the removed loci, and a new pan-genome frequency plot for this file."
    th: "[THRESHOLD], --threshold [THRESHOLD] Threshold for the allele size (default=0.2)."
    gene_file: "Obtain a roary's gene presence and absence csv file without the removed loci."
    threshold: ""
  }
}