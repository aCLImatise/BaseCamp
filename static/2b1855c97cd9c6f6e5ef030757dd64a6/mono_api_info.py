from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, File

Mono_Api_Info_V0_1_0 = CommandToolBuilder(tool="mono_api_info", base_command=["mono-api-info"], inputs=[ToolInput(tag="in_abi", input_type=Boolean(optional=True), prefix="--abi", doc=InputDocumentation(doc="Generate ABI, not API; contains only classes with\ninstance fields which are not [NonSerialized].")), ToolInput(tag="in_follow_forwarders", input_type=Boolean(optional=True), prefix="--follow-forwarders", doc=InputDocumentation(doc="Follow type forwarders.")), ToolInput(tag="in_search_directory", input_type=Directory(optional=True), prefix="--search-directory", doc=InputDocumentation(doc="Check for assembly references in DIRECTORY.")), ToolInput(tag="in_read_register_assembly", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="Read and register the file ASSEMBLY, and add the\ndirectory containing ASSEMBLY to the search path.")), ToolInput(tag="in_output_file_specified", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="The output file. If not specified the output will\nbe written to stdout."))], outputs=[ToolOutput(tag="out_output_file_specified", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_specified", type_hint=File()), doc=OutputDocumentation(doc="The output file. If not specified the output will\nbe written to stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mono_Api_Info_V0_1_0().translate("wdl", allow_empty_container=True)

