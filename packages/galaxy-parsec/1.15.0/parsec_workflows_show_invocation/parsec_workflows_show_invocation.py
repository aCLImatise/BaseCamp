from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Workflows_Show_Invocation_V0_1_0 = CommandToolBuilder(tool="parsec_workflows_show_invocation", base_command=["parsec", "workflows", "show_invocation"], inputs=[ToolInput(tag="in_workflow_id", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_invocation_id", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Workflows_Show_Invocation_V0_1_0().translate("wdl")

