from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Parsec_Workflows_Update_Workflow_V0_1_0 = CommandToolBuilder(tool="parsec_workflows_update_workflow", base_command=["parsec", "workflows", "update_workflow"], inputs=[ToolInput(tag="in_annotation", input_type=String(optional=True), prefix="--annotation", doc=InputDocumentation(doc="New annotation for the workflow")), ToolInput(tag="in_menu_entry", input_type=Boolean(optional=True), prefix="--menu_entry", doc=InputDocumentation(doc="Whether the workflow should appear in the user's menu")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="New name of the workflow")), ToolInput(tag="in_tags", input_type=String(optional=True), prefix="--tags", doc=InputDocumentation(doc="Replace workflow tags with the given list")), ToolInput(tag="in_workflow", input_type=String(optional=True), prefix="--workflow", doc=InputDocumentation(doc="dictionary representing the workflow to be updated")), ToolInput(tag="in_workflow_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Workflows_Update_Workflow_V0_1_0().translate("wdl")

