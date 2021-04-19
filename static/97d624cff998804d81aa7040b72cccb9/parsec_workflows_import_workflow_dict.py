from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Parsec_Workflows_Import_Workflow_Dict_V0_1_0 = CommandToolBuilder(tool="parsec_workflows_import_workflow_dict", base_command=["parsec", "workflows", "import_workflow_dict"], inputs=[ToolInput(tag="in_publish", input_type=Boolean(optional=True), prefix="--publish", doc=InputDocumentation(doc="if ``True`` the uploaded workflow will be published; otherwise\nit will be visible only by the user which uploads it (default)")), ToolInput(tag="in_workflow_dict", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Workflows_Import_Workflow_Dict_V0_1_0().translate("wdl")

