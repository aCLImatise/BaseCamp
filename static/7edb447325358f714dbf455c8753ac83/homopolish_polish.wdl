version 1.0

task HomopolishPolish {
  input {
    File? model_path
    File? assembly
    File? sketch_path
    String? genus
    Int? threads
    File? output_dir
    Float? mash_threshold
    Int? download_contig_nums
    Boolean? debug
    Boolean? mash_screen
    Boolean? your_assembly_genome
  }
  command <<<
    homopolish polish \
      ~{if defined(model_path) then ("--model_path " +  '"' + model_path + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(sketch_path) then ("--sketch_path " +  '"' + sketch_path + '"') else ""} \
      ~{if defined(genus) then ("--genus " +  '"' + genus + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(mash_threshold) then ("--mash_threshold " +  '"' + mash_threshold + '"') else ""} \
      ~{if defined(download_contig_nums) then ("--download_contig_nums " +  '"' + download_contig_nums + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (mash_screen) then "--mash_screen" else ""} \
      ~{if (your_assembly_genome) then "--meta" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/homopolish:0.0.1--pyh3252c3a_0"
  }
  parameter_meta {
    model_path: "[REQUIRED] Path to a trained model (pkl file). Please\\nsee our github page to see options."
    assembly: "[REQUIRED] Path to a assembly genome."
    sketch_path: "Path to a mash sketch file."
    genus: "Genus name"
    threads: "Number of threads to use. [1]"
    output_dir: "Path to the output directory. [output]"
    mash_threshold: "Mash output threshold. [0.95]"
    download_contig_nums: "How much contig to download from NCBI. [20]"
    debug: "Keep the information of every contig after mash, such\\nas homologous sequences and its identity infomation.\\n[no]"
    mash_screen: "Use mash screen. [mash dist]"
    your_assembly_genome: "Your assembly genome is metagenome. [no]"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}