from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Array

Hca_Auth_Post_V1_Policies_Evaluate_V0_1_0 = CommandToolBuilder(tool="hca_auth_post_v1_policies_evaluate", base_command=["hca", "auth", "post-v1-policies-evaluate"], inputs=[ToolInput(tag="in_principal", input_type=String(optional=True), prefix="--principal", doc=InputDocumentation(doc="Attested user identifier.")), ToolInput(tag="in_action", input_type=Array(t=String(), optional=True), prefix="--action", doc=InputDocumentation(doc="The action the principal is attempting to perform.")), ToolInput(tag="in_resource", input_type=Array(t=String(), optional=True), prefix="--resource", doc=InputDocumentation(doc="The resource the principal will perform the action against.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Auth_Post_V1_Policies_Evaluate_V0_1_0().translate("wdl", allow_empty_container=True)

