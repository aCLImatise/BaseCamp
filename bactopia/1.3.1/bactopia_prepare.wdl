version 1.0

task BactopiaPrepare.py {
  input {
    String? e
    String? s
    String? pattern
    String bac_topia
    String prepare
    String str
  }
  command <<<
    bactopia-prepare.py \
      ~{bac_topia} \
      ~{prepare} \
      ~{str} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""}
  >>>
  parameter_meta {
    e: ""
    s: ""
    pattern: ""
    bac_topia: ""
    prepare: ""
    str: ""
  }
}