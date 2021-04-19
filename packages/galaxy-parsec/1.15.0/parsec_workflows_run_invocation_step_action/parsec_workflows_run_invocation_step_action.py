from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Workflows_Run_Invocation_Step_Action_V0_1_0 = CommandToolBuilder(tool="parsec_workflows_run_invocation_step_action", base_command=["parsec", "workflows", "run_invocation_step_action"], inputs=[ToolInput(tag="in_action", input_type=String(), position=0, doc=InputDocumentation(doc="nature of this action and what is expected will vary based on the the type"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Workflows_Run_Invocation_Step_Action_V0_1_0().translate("wdl")

