from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Parsec_Workflows_Get_Workflows_V0_1_0 = CommandToolBuilder(tool="parsec_workflows_get_workflows", base_command=["parsec", "workflows", "get_workflows"], inputs=[ToolInput(tag="in_workflow_id", input_type=String(optional=True), prefix="--workflow_id", doc=InputDocumentation(doc="Encoded workflow ID (incompatible with ``name``)")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Filter by name of workflow (incompatible with\n``workflow_id``). If multiple names match the given\nname, all the workflows matching the argument will be\nreturned.")), ToolInput(tag="in_published", input_type=Boolean(optional=True), prefix="--published", doc=InputDocumentation(doc="if ``True``, return also published workflows"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Workflows_Get_Workflows_V0_1_0().translate("wdl")

