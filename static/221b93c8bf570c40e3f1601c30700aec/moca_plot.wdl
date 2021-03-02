version 1.0

task MocaPlot {
  input {
    Directory? meme_dir
    Directory? centri_mo_dir
    String? fimo_dir_sample
    String? fimo_dir_control
    String? name
    Int? flank_motif
    Int? motif
    Directory? oc
    File? configuration
    Boolean? show_progress
    File? genome_build
  }
  command <<<
    moca plot \
      ~{if defined(meme_dir) then ("--meme-dir " +  '"' + meme_dir + '"') else ""} \
      ~{if defined(centri_mo_dir) then ("--centrimo-dir " +  '"' + centri_mo_dir + '"') else ""} \
      ~{if defined(fimo_dir_sample) then ("--fimo-dir-sample " +  '"' + fimo_dir_sample + '"') else ""} \
      ~{if defined(fimo_dir_control) then ("--fimo-dir-control " +  '"' + fimo_dir_control + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(flank_motif) then ("--flank-motif " +  '"' + flank_motif + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{if defined(configuration) then ("--configuration " +  '"' + configuration + '"') else ""} \
      ~{if (show_progress) then "--show-progress" else ""} \
      ~{if defined(genome_build) then ("--genome-build " +  '"' + genome_build + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    meme_dir: "MEME output directory  [required]"
    centri_mo_dir: "Centrimo output directory  [required]"
    fimo_dir_sample: "Sample fimo.txt  [required]"
    fimo_dir_control: "Control fimo.txt  [required]"
    name: "Plot title"
    flank_motif: "Length of sequence flanking motif\\n[required]"
    motif: "Motif number"
    oc: "Output Directory  [required]"
    configuration: "Configuration file  [required]"
    show_progress: "Print progress"
    genome_build: "Key denoting genome build to use in\\nconfiguration file  [required]"
  }
  output {
    File out_stdout = stdout()
    Directory out_meme_dir = "${in_meme_dir}"
    Directory out_centri_mo_dir = "${in_centri_mo_dir}"
    Directory out_oc = "${in_oc}"
  }
}