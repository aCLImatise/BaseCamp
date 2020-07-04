version 1.0

task OmeroAdminEmail {
  input {
    Boolean? everyone
    Boolean? inactive
    String? wait
    String? user_id
    String? user_name
    String? group_id
    String? group_name
    String subject
    String text
  }
  command <<<
    omero admin email \
      ~{subject} \
      ~{text} \
      ~{true="--everyone" false="" everyone} \
      ~{true="--inactive" false="" inactive} \
      ~{if defined(wait) then ("--wait " +  '"' + wait + '"') else ""} \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(user_name) then ("--user-name " +  '"' + user_name + '"') else ""} \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""} \
      ~{if defined(group_name) then ("--group-name " +  '"' + group_name + '"') else ""}
  >>>
  parameter_meta {
    everyone: "Contact everyone in the system regardless of other arguments."
    inactive: "Do not filter inactive users."
    wait: "Number of seconds to wait for the processing to complete (Indefinite < 0; No wait=0)."
    user_id: "ID of the user."
    user_name: "Name of the user."
    group_id: "ID of the group."
    group_name: "Name of the group."
    subject: "Required subject for the mail"
    text: "All further arguments are combined to form the body. stdin if none or '-' is given."
  }
}