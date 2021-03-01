version 1.0

task Schavott {
  input {
    String? run_mode
    String? scaffold_er
    File? s_space_path
    String? read_type
    Int? min_read_length
    Int? min_quality
    Directory? watch
    File? contig_file
    String? trigger_mode
    String? skip
    Int? intensity
    Boolean? plot
    File? set_output_filename
  }
  command <<<
    schavott \
      ~{if defined(run_mode) then ("--run_mode " +  '"' + run_mode + '"') else ""} \
      ~{if defined(scaffold_er) then ("--scaffolder " +  '"' + scaffold_er + '"') else ""} \
      ~{if defined(s_space_path) then ("--sspace_path " +  '"' + s_space_path + '"') else ""} \
      ~{if defined(read_type) then ("--read_type " +  '"' + read_type + '"') else ""} \
      ~{if defined(min_read_length) then ("--min_read_length " +  '"' + min_read_length + '"') else ""} \
      ~{if defined(min_quality) then ("--min_quality " +  '"' + min_quality + '"') else ""} \
      ~{if defined(watch) then ("--watch " +  '"' + watch + '"') else ""} \
      ~{if defined(contig_file) then ("--contig_file " +  '"' + contig_file + '"') else ""} \
      ~{if defined(trigger_mode) then ("--trigger_mode " +  '"' + trigger_mode + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(intensity) then ("--intensity " +  '"' + intensity + '"') else ""} \
      ~{if (plot) then "--plot" else ""} \
      ~{if defined(set_output_filename) then ("--output " +  '"' + set_output_filename + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    run_mode: "Run scaffolding or assembly"
    scaffold_er: "Which scaffolder to use."
    s_space_path: "Path to SSPACE (Only for scaffolding)"
    read_type: "Select input type: fastq, fast5 or fasta, this is also\\nthe search pattern for shavott (*.read_type)"
    min_read_length: "Minimum read length from MinION to use."
    min_quality: "Minimum quality for reads from MinION to use."
    watch: "Directory to watch for fast5 files"
    contig_file: "Path to contig file (Only for scaffolding)"
    trigger_mode: "Use timer or read count. [reads]"
    skip: "Skips the first j read of the sequencing"
    intensity: "How often the scaffolding process should run. If run\\nmode is set to reads, scaffolding will run every i:th\\nread. If run mode is time, scaffolding will run every\\ni:th second. [100 reads]"
    plot: "Plot result in web-browser"
    set_output_filename: "Set output filename. (Defaut: schavott)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_set_output_filename = "${in_set_output_filename}"
  }
}