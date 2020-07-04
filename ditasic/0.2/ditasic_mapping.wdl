version 1.0

task DitasicMapping.py {
  input {
    Int? length
    String? index
    String? temp
  }
  command <<<
    ditasic_mapping.py \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""}
  >>>
  parameter_meta {
    length: "Length of reads used in similarity matrix creation. [default: 100]"
    index: "Path to kallisto index for all files."
    temp: "Directory to store temporary simulated datasets and TSV files. [default: ./temp]"
  }
}