from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Planemo_Workflow_Upload_V0_1_0 = CommandToolBuilder(tool="planemo_workflow_upload", base_command=["planemo", "workflow_upload"], inputs=[ToolInput(tag="in_namespace", input_type=String(optional=True), prefix="--namespace", doc=InputDocumentation(doc="Organization or username under which to create or update\nworkflow repository. Must be a valid github username or\norganization")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry_run", doc=InputDocumentation(doc="Don't execute action, show preview of action.")), ToolInput(tag="in_target", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Workflow_Upload_V0_1_0().translate("wdl")

