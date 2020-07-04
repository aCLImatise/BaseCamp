version 1.0

task JeClip {
  input {
    String je_clipper
  }
  command <<<
    je clip \
      ~{je_clipper}
  >>>
  parameter_meta {
    je_clipper: ""
  }
}