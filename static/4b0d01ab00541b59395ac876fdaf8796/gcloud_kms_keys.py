from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Kms_Keys_V0_1_0 = CommandToolBuilder(tool="gcloud_kms_keys", base_command=["gcloud", "kms", "keys"], inputs=[ToolInput(tag="in_keyring", input_type=String(optional=True), prefix="--keyring", doc=InputDocumentation(doc="The containing keyring.")), ToolInput(tag="in_location", input_type=String(optional=True), prefix="--location", doc=InputDocumentation(doc="The location of the requested resource.")), ToolInput(tag="in_operations_dot", input_type=String(), position=0, doc=InputDocumentation(doc="FLAGS")), ToolInput(tag="in_versions", input_type=String(), position=0, doc=InputDocumentation(doc="Create and manage versions.")), ToolInput(tag="in_add_i_am_policy_binding", input_type=String(), position=0, doc=InputDocumentation(doc="Add IAM policy binding to a key.")), ToolInput(tag="in_create", input_type=String(), position=1, doc=InputDocumentation(doc="Create a new key.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Get metadata for a given key.")), ToolInput(tag="in_get_i_am_policy", input_type=String(), position=3, doc=InputDocumentation(doc="Get the IAM policy for a key.")), ToolInput(tag="in_list", input_type=String(), position=4, doc=InputDocumentation(doc="List the keys within a keyring.")), ToolInput(tag="in_remove_i_am_policy_binding", input_type=String(), position=5, doc=InputDocumentation(doc="Remove an IAM policy binding from a key.")), ToolInput(tag="in_remove_rotation_schedule", input_type=String(), position=6, doc=InputDocumentation(doc="Remove the rotation schedule for a key.")), ToolInput(tag="in_set_i_am_policy", input_type=String(), position=7, doc=InputDocumentation(doc="Set the IAM policy for a key.")), ToolInput(tag="in_set_primary_version", input_type=String(), position=8, doc=InputDocumentation(doc="Set the primary version of a key.")), ToolInput(tag="in_set_rotation_schedule", input_type=String(), position=9, doc=InputDocumentation(doc="Update the rotation schedule for a key."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Kms_Keys_V0_1_0().translate("wdl", allow_empty_container=True)

