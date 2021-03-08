from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Planemo_Workflow_Test_Init_V0_1_0 = CommandToolBuilder(tool="planemo_workflow_test_init", base_command=["planemo", "workflow_test_init"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite existing files if present.")), ToolInput(tag="in_no_split_test", input_type=File(optional=True), prefix="--no_split_test", doc=InputDocumentation(doc="Write workflow job and test definitions to\nseparate files.")), ToolInput(tag="in_workflow_path_or_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Workflow_Test_Init_V0_1_0().translate("wdl")

