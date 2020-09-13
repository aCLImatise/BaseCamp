version 1.0

task GetHomerQCstatspl {
  input {
    String? mapping_tag_directors
    Int? tag_directories_stats
    Int? chr
    Int? sam
  }
  command <<<
    getHomerQCstats_pl \
      ~{if defined(mapping_tag_directors) then ("-k " +  '"' + mapping_tag_directors + '"') else ""} \
      ~{if defined(tag_directories_stats) then ("-d " +  '"' + tag_directories_stats + '"') else ""} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{if defined(sam) then ("-sam " +  '"' + sam + '"') else ""}
  >>>
  parameter_meta {
    mapping_tag_directors: "(mapping between tag directors and alignment files)"
    tag_directories_stats: "[tagDir2] ... (tag directories to get stats from)"
    chr: "[chr2] ... (print tags for these chromosomes)"
    sam: "[f2.sam] ... (alignment files, will look for *log files)"
  }
  output {
    File out_stdout = stdout()
  }
}