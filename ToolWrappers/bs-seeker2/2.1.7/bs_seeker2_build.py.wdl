version 1.0

task BsSeeker2buildpy {
  input {
    File? input_your_fasta
    Int? aligner
    File? path
    File? db
    Boolean? rrbs
    Int? low
    Int? up
    String? cut_site
  }
  command <<<
    bs_seeker2_build_py \
      ~{if defined(input_your_fasta) then ("--file " +  '"' + input_your_fasta + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (rrbs) then "--rrbs" else ""} \
      ~{if defined(low) then ("--low " +  '"' + low + '"') else ""} \
      ~{if defined(up) then ("--up " +  '"' + up + '"') else ""} \
      ~{if defined(cut_site) then ("--cut-site " +  '"' + cut_site + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_your_fasta: "Input your reference genome file (fasta)"
    aligner: "Aligner program to perform the analysis: bowtie,\\nbowtie2, soap, rmap [Default: bowtie]"
    path: "Path to the aligner program. Detected:\\nbowtie: None\\nbowtie2: /usr/local/bin\\nrmap: None\\nsoap: None"
    db: "Path to the reference genome library (generated in\\npreprocessing genome) [Default:\\n/usr/local/bin/bs_utils/reference_genomes]"
    rrbs: "Build index specially for Reduced Representation\\nBisulfite Sequencing experiments. Genome other than\\ncertain fragments will be masked. [Default: False]"
    low: "lower bound of fragment length (excluding recognition\\nsequence such as C-CGG) [Default: 20]"
    up: "upper bound of fragment length (excluding recognition\\nsequence such as C-CGG ends) [Default: 500]"
    cut_site: "Cut sites of restriction enzyme. Ex: MspI(C-CGG),\\nMael:(C-TAG), double-enzyme MspI&Mael:(C-CGG,C-TAG).\\n[Default: C-CGG]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}