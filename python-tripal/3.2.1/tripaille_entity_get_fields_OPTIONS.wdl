version 1.0

task TripailleEntityGetFieldsOPTIONS {
  input {
    String? entityEntity
  }
  command <<<
    tripaille entity get_fields OPTIONS \
      ~{entityEntity}
  >>>
}