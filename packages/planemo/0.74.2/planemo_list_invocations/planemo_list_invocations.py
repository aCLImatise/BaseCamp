from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Planemo_List_Invocations_V0_1_0 = CommandToolBuilder(tool="planemo_list_invocations", base_command=["planemo", "list_invocations"], inputs=[ToolInput(tag="in_profile", input_type=String(optional=True), prefix="--profile", doc=InputDocumentation(doc="Name of profile (created with the profile_create command) to\nuse with this command.  [required]")), ToolInput(tag="in_workflow_identifier", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_List_Invocations_V0_1_0().translate("wdl")

