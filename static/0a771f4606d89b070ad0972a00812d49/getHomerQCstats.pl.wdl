version 1.0

task GetHomerQCstatspl {
  input {
    String? mapping_alignment_files
    Int? tag_directories_get
    Int? chr
    Int? sam
  }
  command <<<
    getHomerQCstats_pl \
      ~{if defined(mapping_alignment_files) then ("-k " +  '"' + mapping_alignment_files + '"') else ""} \
      ~{if defined(tag_directories_get) then ("-d " +  '"' + tag_directories_get + '"') else ""} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{if defined(sam) then ("-sam " +  '"' + sam + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mapping_alignment_files: "(mapping between tag directors and alignment files)"
    tag_directories_get: "[tagDir2] ... (tag directories to get stats from)"
    chr: "[chr2] ... (print tags for these chromosomes)"
    sam: "[f2.sam] ... (alignment files, will look for *log files)"
  }
  output {
    File out_stdout = stdout()
  }
}