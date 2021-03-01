from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory

Capc_Map_Combinereps_V0_1_0 = CommandToolBuilder(tool="capC_MAP_combinereps", base_command=["capC-MAP", "combinereps"], inputs=[ToolInput(tag="in_configuration_file", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="configuration file")), ToolInput(tag="in_directory_containing_output", input_type=Directory(optional=True), prefix="-i", doc=InputDocumentation(doc="directory containing output from capC-MAP for a replicate\n(option must appear multiple times).")), ToolInput(tag="in_directory_created_combined", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="directory to be created for combined output"))], outputs=[ToolOutput(tag="out_directory_containing_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_containing_output", type_hint=File()), doc=OutputDocumentation(doc="directory containing output from capC-MAP for a replicate\n(option must appear multiple times).")), ToolOutput(tag="out_directory_created_combined", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_created_combined", type_hint=File()), doc=OutputDocumentation(doc="directory to be created for combined output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Capc_Map_Combinereps_V0_1_0().translate("wdl", allow_empty_container=True)

