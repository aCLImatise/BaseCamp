version 1.0

task ChorusHomo {
  input {
    File? jellyfish
    File? bwa
    File? source
    File? target
    File? bed_format_input
    Directory? save
    Int? threads
  }
  command <<<
    ChorusHomo \
      ~{if defined(jellyfish) then ("--jellyfish " +  '"' + jellyfish + '"') else ""} \
      ~{if defined(bwa) then ("--bwa " +  '"' + bwa + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(bed_format_input) then ("--input " +  '"' + bed_format_input + '"') else ""} \
      ~{if defined(save) then ("--save " +  '"' + save + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chorus2:2.01--py37hf01694f_0"
  }
  parameter_meta {
    jellyfish: "The path where Jellyfish software installed"
    bwa: "The path where BWA software installed"
    source: "Fasta format genome file (GenomeA) which the probe\\nwere generated from, should include all sequences from\\ngenome"
    target: "Fasta format genome file (GenomeB) which the probe\\nwill be aligned to, should include all sequences from\\ngenome"
    bed_format_input: "BED format input file, contains oligo probes generated\\nfrom Chorus2"
    save: "The output folder for saving results"
    threads: "Number of threads or CPUs to use. (Default: 1)"
  }
  output {
    File out_stdout = stdout()
    Directory out_save = "${in_save}"
  }
}