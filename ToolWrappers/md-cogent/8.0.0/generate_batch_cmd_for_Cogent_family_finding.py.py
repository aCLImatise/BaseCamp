from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Generate_Batch_Cmd_For_Cogent_Family_Finding_Py_V0_1_0 = CommandToolBuilder(tool="generate_batch_cmd_for_Cogent_family_finding.py", base_command=["generate_batch_cmd_for_Cogent_family_finding.py"], inputs=[ToolInput(tag="in_generate", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_batch", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_commands", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_running", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_cogent", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_family", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_finding", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_each", input_type=String(), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_pre_cluster", input_type=String(), position=10, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=11, doc=InputDocumentation(doc="")), ToolInput(tag="in_bin", input_type=String(), position=12, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/md-cogent:8.0.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Batch_Cmd_For_Cogent_Family_Finding_Py_V0_1_0().translate("wdl")

