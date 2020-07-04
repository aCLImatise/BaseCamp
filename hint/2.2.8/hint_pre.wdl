version 1.0

task HintPre {
  input {
    String? data
    String? ref_dir
    String? sam_tools_path
    String? aligner_bwa
    String? bwa_index
    String? genome
    String? in_format
    String? out_format
    String? resolution
    String? cooler_path
    String? juicer_path
    String? pair_tools_path
    String? name
    String? outdir
    String? threads
  }
  command <<<
    hint pre \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(ref_dir) then ("--refdir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(sam_tools_path) then ("--samtoolspath " +  '"' + sam_tools_path + '"') else ""} \
      ~{if defined(aligner_bwa) then ("--alignerbwa " +  '"' + aligner_bwa + '"') else ""} \
      ~{if defined(bwa_index) then ("--bwaIndex " +  '"' + bwa_index + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(cooler_path) then ("--coolerpath " +  '"' + cooler_path + '"') else ""} \
      ~{if defined(juicer_path) then ("--juicerpath " +  '"' + juicer_path + '"') else ""} \
      ~{if defined(pair_tools_path) then ("--pairtoolspath " +  '"' + pair_tools_path + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    data: "Hi-C raw data with fastq format, two mates seperate with a comma ',', or bam file after alignment."
    ref_dir: "the reference directory that downloaded from dropbox dropbox. (https://www.dropbox.com/sh/2ufsyu4wvrboxxp/A ABk5-_Fwy7jdM_t0vIsgYf4a?dl=0.)"
    sam_tools_path: "Path to samtools, e.g./n/app/samtools/1.3.1/bin/samtools"
    aligner_bwa: "Path to your BWA aligner, required when your input file(s) is in fastq format, ignore when you input a bam file."
    bwa_index: "Path to BWA Index if your input file is fastq format, ignore if your input is bam file."
    genome: "Specify your species, choose from hg38, hg19, and mm10. DEFAULT: hg19"
    in_format: "Format for the Hi-C input data, choose from 'fastq' and 'bam', DEFAULT: fastq"
    out_format: "Format for the output contact matrix, choose from 'cooler' and 'juicer', DEFAULT: cooler"
    resolution: "Generate Hi-C contact matrix in user specified resolution. If not set, HiNT will only output Hi-C contact matrix in 50kb, 100kb, and 1Mb"
    cooler_path: "Path to cooler tool, required when the format is cool via cooler"
    juicer_path: "Path to juicer tools, required when the format is hic via juicer tools"
    pair_tools_path: "Path to pairtools"
    name: "Prefix for the result files. If not set, 'NA' will be used instead"
    outdir: "Path to the output directory, where you want to store all the output files, if not set, the current directory will be used"
    threads: "Number of threads for running BWA, DEFAULT: 16"
  }
}