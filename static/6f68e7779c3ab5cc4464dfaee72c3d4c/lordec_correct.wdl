version 1.0

task Lordeccorrect {
  input {
    File? long_reads
    Boolean? short_reads
    Int? km_er_len
    File? corrected_read_file
    Boolean? solidthreshold_solid_kmer
  }
  command <<<
    lordec_correct \
      ~{if defined(long_reads) then ("--long_reads " +  '"' + long_reads + '"') else ""} \
      ~{if (short_reads) then "--short_reads" else ""} \
      ~{if defined(km_er_len) then ("--kmer_len " +  '"' + km_er_len + '"') else ""} \
      ~{if defined(corrected_read_file) then ("--corrected_read_file " +  '"' + corrected_read_file + '"') else ""} \
      ~{if (solidthreshold_solid_kmer) then "-s" else ""}
  >>>
  parameter_meta {
    long_reads: ""
    short_reads: "<short read FASTA/Q file(s)>"
    km_er_len: ""
    corrected_read_file: ""
    solidthreshold_solid_kmer: "|solid_threshold <solid k-mer abundance threshold>"
  }
  output {
    File out_stdout = stdout()
    File out_corrected_read_file = "${in_corrected_read_file}"
  }
}