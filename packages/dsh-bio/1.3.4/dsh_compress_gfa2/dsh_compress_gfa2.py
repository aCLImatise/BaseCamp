from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dsh_Compress_Gfa2_V0_1_0 = CommandToolBuilder(tool="dsh_compress_gfa2", base_command=["dsh-compress-gfa2"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_input_gfa_two_file", input_type=Boolean(optional=True), prefix="--input-gfa2-file", doc=InputDocumentation(doc="[class java.io.File]  input GFA 2.0 file, default stdin [optional]")), ToolInput(tag="in_output_gfa_two_file", input_type=File(optional=True), prefix="--output-gfa2-file", doc=InputDocumentation(doc="[class java.io.File]  output GFA 2.0 file, default stdout [optional]")), ToolInput(tag="in_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_gfa_two_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_gfa_two_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output GFA 2.0 file, default stdout [optional]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Compress_Gfa2_V0_1_0().translate("wdl", allow_empty_container=True)

