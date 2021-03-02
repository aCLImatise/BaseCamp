version 1.0

task MIRfixpy {
  input {
    Int? cores
    File? families
    Directory? fam_dir
    String? genomes
    String? mapping
    String? mature
    Directory? mature_dir
    Directory? outdir
    String? extension
    Directory? logdir
    String? loglevel
  }
  command <<<
    MIRfix_py \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(families) then ("--families " +  '"' + families + '"') else ""} \
      ~{if defined(fam_dir) then ("--famdir " +  '"' + fam_dir + '"') else ""} \
      ~{if defined(genomes) then ("--genomes " +  '"' + genomes + '"') else ""} \
      ~{if defined(mapping) then ("--mapping " +  '"' + mapping + '"') else ""} \
      ~{if defined(mature) then ("--mature " +  '"' + mature + '"') else ""} \
      ~{if defined(mature_dir) then ("--maturedir " +  '"' + mature_dir + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(logdir) then ("--logdir " +  '"' + logdir + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirfix:2.0.0--0"
  }
  parameter_meta {
    cores: "Number of parallel processes to run"
    families: "Path to list of families to work on"
    fam_dir: "Directory where family files are located"
    genomes: "Genome FASTA files to parse"
    mapping: "Mapping between precursor and families"
    mature: "FASTA files containing mature sequences"
    mature_dir: "Directory of matures"
    outdir: "Directory for output"
    extension: "Extension of nucleotides for precursor cutting"
    logdir: "Directory to write logfiles to"
    loglevel: "Set log level\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}