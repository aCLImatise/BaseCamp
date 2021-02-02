version 1.0

task BamToWigpy {
  input {
    File? bam_file
    File? genome_file
    File? outfile
    File? sam_tools_path
  }
  command <<<
    bamToWig_py \
      ~{if defined(bam_file) then ("--bamFile " +  '"' + bam_file + '"') else ""} \
      ~{if defined(genome_file) then ("--genomeFile " +  '"' + genome_file + '"') else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if defined(sam_tools_path) then ("--SAMTOOLS_PATH " +  '"' + sam_tools_path + '"') else ""}
  >>>
  parameter_meta {
    bam_file: "Input file in Bam format."
    genome_file: "Input genome file in FASTA format."
    outfile: "Output file in wiggle format."
    sam_tools_path: "Path to samtools executable, e.g. '/usr/bin'.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}