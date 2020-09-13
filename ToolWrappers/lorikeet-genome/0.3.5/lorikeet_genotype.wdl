version 1.0

task LorikeetGenotype {
  input {
    String? bam_files
    String? coupled
    String? interleaved
    Int? one
    Int? two
    String? reference
    String? single
    File? bam_file_cache_directory
  }
  command <<<
    lorikeet genotype \
      ~{if defined(bam_files) then ("--bam-files " +  '"' + bam_files + '"') else ""} \
      ~{if defined(coupled) then ("--coupled " +  '"' + coupled + '"') else ""} \
      ~{if defined(interleaved) then ("--interleaved " +  '"' + interleaved + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(single) then ("--single " +  '"' + single + '"') else ""} \
      ~{if defined(bam_file_cache_directory) then ("--bam-file-cache-directory " +  '"' + bam_file_cache_directory + '"') else ""}
  >>>
  parameter_meta {
    bam_files: "..."
    coupled: "..."
    interleaved: "..."
    one: "..."
    two: "..."
    reference: "..."
    single: "..."
    bam_file_cache_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}