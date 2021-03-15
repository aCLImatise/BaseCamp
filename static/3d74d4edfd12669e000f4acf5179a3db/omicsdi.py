from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Omicsdi_V0_1_0 = CommandToolBuilder(tool="omicsdi", base_command=["omicsdi"], inputs=[ToolInput(tag="in_download", input_type=Directory(optional=True), prefix="--download", doc=InputDocumentation(doc="Use this flag to download the files in the current\ndirectory or a specified output directory")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Use this flag to display th extensions")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory when downloading files (default: CWD)")), ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="Output directory when downloading files (default: CWD)")), ToolInput(tag="in_acc_number", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_download", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_download", type_hint=File()), doc=OutputDocumentation(doc="Use this flag to download the files in the current\ndirectory or a specified output directory")), ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory when downloading files (default: CWD)")), ToolOutput(tag="out_input", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_input", type_hint=File()), doc=OutputDocumentation(doc="Output directory when downloading files (default: CWD)"))], container="quay.io/biocontainers/ddipy:0.0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Omicsdi_V0_1_0().translate("wdl")

