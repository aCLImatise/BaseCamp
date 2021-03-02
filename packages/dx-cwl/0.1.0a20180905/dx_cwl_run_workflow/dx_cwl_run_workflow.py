from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Dx_Cwl_Run_Workflow_V0_1_0 = CommandToolBuilder(tool="dx_cwl_run_workflow", base_command=["dx-cwl", "run-workflow"], inputs=[ToolInput(tag="in_token", input_type=String(optional=True), prefix="--token", doc=InputDocumentation(doc="DNAnexus authentication token")), ToolInput(tag="in_project", input_type=String(optional=True), prefix="--project", doc=InputDocumentation(doc="DNAnexus project ID")), ToolInput(tag="in_rootdir", input_type=Directory(optional=True), prefix="--rootdir", doc=InputDocumentation(doc="Root directory to place CWL workflow, tools, and")), ToolInput(tag="in_workflow", input_type=String(), position=0, doc=InputDocumentation(doc="Pointer to workflow/applet file or ID on the platform")), ToolInput(tag="in_inputs", input_type=String(), position=1, doc=InputDocumentation(doc="Pointer to CWL input file on (JSON or YAML) the platform.\nAll files referenced within this file should exist within\nthe project on the platform. Relative paths are\nsupported.")), ToolInput(tag="in_resources", input_type=String(), position=0, doc=InputDocumentation(doc="--wait             Pointer to CWL input file on (JSON or YAML) the platform."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Cwl_Run_Workflow_V0_1_0().translate("wdl", allow_empty_container=True)

