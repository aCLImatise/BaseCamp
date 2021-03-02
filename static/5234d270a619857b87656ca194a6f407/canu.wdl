version 1.0

task Canu {
  input {
    String? p
    Directory? d
    Boolean? pac_bio_hifi
    Boolean? haplotype
    Boolean? correct
    Boolean? trim
    Boolean? assemble
    Boolean? trim_assemble
    Int? haplotype_billy
    Boolean? pac_bio
    Boolean? citation
    Boolean? version
    String assembled_dot
  }
  command <<<
    canu \
      ~{assembled_dot} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if (pac_bio_hifi) then "-pacbio-hifi" else ""} \
      ~{if (haplotype) then "-haplotype" else ""} \
      ~{if (correct) then "-correct" else ""} \
      ~{if (trim) then "-trim" else ""} \
      ~{if (assemble) then "-assemble" else ""} \
      ~{if (trim_assemble) then "-trim-assemble" else ""} \
      ~{if defined(haplotype_billy) then ("-haplotypeBILLY " +  '"' + haplotype_billy + '"') else ""} \
      ~{if (pac_bio) then "-pacbio" else ""} \
      ~{if (citation) then "-citation" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    p: "\\"
    d: "\\"
    pac_bio_hifi: "] file1 file2 ..."
    haplotype: "- generate haplotype-specific reads"
    correct: "- generate corrected reads"
    trim: "- generate trimmed reads"
    assemble: "- generate an assembly"
    trim_assemble: "- generate trimmed reads and then assemble them"
    haplotype_billy: "billy2.fasta.gz"
    pac_bio: "<files>"
    citation: ""
    version: ""
    assembled_dot: "It is used primarily to estimate coverage in reads, NOT as the desired"
  }
  output {
    File out_stdout = stdout()
  }
}