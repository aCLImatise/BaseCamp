version 1.0

task ScssimLearn {
  input {
    File? bam
    File? target
    File? vcf
    File? ref
    Int? w_size
    Int? km_er
    File? output_file
    File? sam_tools
  }
  command <<<
    scssim learn \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(w_size) then ("--wsize " +  '"' + w_size + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""}
  >>>
  parameter_meta {
    bam: "normal BAM file"
    target: "exome target file (.bed) for whole-exome sequencing[default:null]"
    vcf: "the VCF file generated from the normal BAM"
    ref: "genome reference file (.fasta) to which the reads were aligned"
    w_size: "the length of windows used to infer GC-content bias[default:1000]"
    km_er: "the length of kmer sequence [default:3]"
    output_file: "output file"
    sam_tools: "the path of samtools [default:samtools]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}