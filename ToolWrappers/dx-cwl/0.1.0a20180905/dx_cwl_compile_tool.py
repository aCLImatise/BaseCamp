from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Array, Int

Dx_Cwl_Compile_Tool_V0_1_0 = CommandToolBuilder(tool="dx_cwl_compile_tool", base_command=["dx-cwl", "compile-tool"], inputs=[ToolInput(tag="in_token", input_type=String(optional=True), prefix="--token", doc=InputDocumentation(doc="DNAnexus authentication token")), ToolInput(tag="in_project", input_type=String(optional=True), prefix="--project", doc=InputDocumentation(doc="DNAnexus project ID")), ToolInput(tag="in_rootdir", input_type=Directory(optional=True), prefix="--rootdir", doc=InputDocumentation(doc="Root directory to place CWL workflow, tools, and")), ToolInput(tag="in_bundled", input_type=Array(t=String(), optional=True), prefix="--bundled", doc=InputDocumentation(doc="One or more DNAnexus bundledDepends file IDs to\ninclude in tool.")), ToolInput(tag="in_extra_disk", input_type=Int(optional=True), prefix="--extradisk", doc=InputDocumentation(doc="Additional disk space required for instance in\nmebibytes (2**20)")), ToolInput(tag="in_instance_provider", input_type=String(optional=True), prefix="--instance-provider", doc=InputDocumentation(doc="VM instance provider (default: aws)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Cwl_Compile_Tool_V0_1_0().translate("wdl", allow_empty_container=True)

