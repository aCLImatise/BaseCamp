from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File

Workflow_To_Tools_V0_1_0 = CommandToolBuilder(tool="workflow_to_tools", base_command=["workflow-to-tools"], inputs=[ToolInput(tag="in_workflow", input_type=Array(t=String(), optional=True), prefix="--workflow", doc=InputDocumentation(doc="A space separated list of galaxy workflow description\nfiles in json format")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="The output file with a yml tool list")), ToolInput(tag="in_panel_label", input_type=String(optional=True), prefix="--panel_label", doc=InputDocumentation(doc="The name of the panel where the tools will show up in\nGalaxy.If not specified: 'Tools from workflows'")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="The output file with a yml tool list"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Workflow_To_Tools_V0_1_0().translate("wdl", allow_empty_container=True)

