from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Kms_Keyrings_V0_1_0 = CommandToolBuilder(tool="gcloud_kms_keyrings", base_command=["gcloud", "kms", "keyrings"], inputs=[ToolInput(tag="in_location", input_type=String(optional=True), prefix="--location", doc=InputDocumentation(doc="The location of the requested resource.")), ToolInput(tag="in_add_i_am_policy_binding", input_type=String(), position=0, doc=InputDocumentation(doc="Add IAM policy binding to a keyring.")), ToolInput(tag="in_create", input_type=String(), position=1, doc=InputDocumentation(doc="Create a new keyring.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Get metadata for a keyring.")), ToolInput(tag="in_get_i_am_policy", input_type=String(), position=3, doc=InputDocumentation(doc="Get the IAM policy for a keyring.")), ToolInput(tag="in_list", input_type=String(), position=4, doc=InputDocumentation(doc="List keyrings within a location.")), ToolInput(tag="in_remove_i_am_policy_binding", input_type=String(), position=5, doc=InputDocumentation(doc="Remove a policy binding from a keyring.")), ToolInput(tag="in_set_i_am_policy", input_type=String(), position=6, doc=InputDocumentation(doc="Set the IAM policy for a keyring."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Kms_Keyrings_V0_1_0().translate("wdl", allow_empty_container=True)

