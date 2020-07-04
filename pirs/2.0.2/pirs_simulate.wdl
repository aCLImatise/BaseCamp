version 1.0

task PirsSimulate {
  input {
    String? set_read_length
    String? set_coverage
    String? set_insert_length
    String? set_length_deviation
    Boolean? simulate_jumping_library
    Boolean? simulate_diploid_genome
    String? set_output_prefix
  }
  command <<<
    pirs simulate \
      ~{if defined(set_read_length) then ("-l " +  '"' + set_read_length + '"') else ""} \
      ~{if defined(set_coverage) then ("-x " +  '"' + set_coverage + '"') else ""} \
      ~{if defined(set_insert_length) then ("-m " +  '"' + set_insert_length + '"') else ""} \
      ~{if defined(set_length_deviation) then ("-v " +  '"' + set_length_deviation + '"') else ""} \
      ~{true="-j" false="" simulate_jumping_library} \
      ~{true="-d" false="" simulate_diploid_genome} \
      ~{if defined(set_output_prefix) then ("-o " +  '"' + set_output_prefix + '"') else ""}
  >>>
  parameter_meta {
    set_read_length: "Set read length"
    set_coverage: "Set coverage"
    set_insert_length: "Set insert length mean"
    set_length_deviation: "Set insert length standard deviation"
    simulate_jumping_library: "Simulate jumping library"
    simulate_diploid_genome: "Simulate from diploid genome produced by `pirs diploid'"
    set_output_prefix: "Set output prefix"
  }
}