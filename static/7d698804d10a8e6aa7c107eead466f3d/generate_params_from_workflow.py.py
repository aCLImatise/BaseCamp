from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Generate_Params_From_Workflow_Py_V0_1_0 = CommandToolBuilder(tool="generate_params_from_workflow.py", base_command=["generate_params_from_workflow.py"], inputs=[ToolInput(tag="in_conf", input_type=File(optional=True), prefix="--conf", doc=InputDocumentation(doc="A yaml file describing the galaxy credentials")), ToolInput(tag="in_galaxy_instance", input_type=String(optional=True), prefix="--galaxy-instance", doc=InputDocumentation(doc="Galaxy server instance name")), ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Path to output directory")), ToolInput(tag="in_workflow", input_type=String(optional=True), prefix="--workflow", doc=InputDocumentation(doc="Workflow to run")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print debug information")), ToolInput(tag="in_include_internals", input_type=Boolean(optional=True), prefix="--include-internals", doc=InputDocumentation(doc="Include internal parameters"))], outputs=[ToolOutput(tag="out_output_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Path to output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Params_From_Workflow_Py_V0_1_0().translate("wdl", allow_empty_container=True)

