from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory

Capc_Map_Postprocess_V0_1_0 = CommandToolBuilder(tool="capC_MAP_postprocess", base_command=["capC-MAP", "postprocess"], inputs=[ToolInput(tag="in_configuration_file", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="configuration file")), ToolInput(tag="in_directory_created_output", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="directory to be created for output"))], outputs=[ToolOutput(tag="out_directory_created_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_created_output", type_hint=File()), doc=OutputDocumentation(doc="directory to be created for output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Capc_Map_Postprocess_V0_1_0().translate("wdl", allow_empty_container=True)

