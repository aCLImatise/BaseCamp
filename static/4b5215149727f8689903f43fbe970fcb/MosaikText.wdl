version 1.0

task MosaikText {
  input {
    File? fast_q
    Boolean? screen
    File? axt
    File? bam
    File? bed
    File? el_and
    String? ref
    File? sam
    Boolean? limit_output_unique
  }
  command <<<
    MosaikText \
      ~{if defined(fast_q) then ("-fastq " +  '"' + fast_q + '"') else ""} \
      ~{if (screen) then "-screen" else ""} \
      ~{if defined(axt) then ("-axt " +  '"' + axt + '"') else ""} \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""} \
      ~{if defined(el_and) then ("-eland " +  '"' + el_and + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(sam) then ("-sam " +  '"' + sam + '"') else ""} \
      ~{if (limit_output_unique) then "-u" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "stores the data in a FASTQ file"
    screen: "displays the reads on the screen"
    axt: "stores the data in an AXT file"
    bam: "stores the data in a BAM file"
    bed: "stores the data in a BED file"
    el_and: "stores the data in an Eland file"
    ref: "displays output for a specific reference"
    sam: "stores the data in a SAM file"
    limit_output_unique: "limit output to unique reads"
  }
  output {
    File out_stdout = stdout()
  }
}