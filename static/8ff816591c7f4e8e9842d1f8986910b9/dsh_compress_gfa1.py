from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dsh_Compress_Gfa1_V0_1_0 = CommandToolBuilder(tool="dsh_compress_gfa1", base_command=["dsh-compress-gfa1"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_input_gfa_one_file", input_type=Boolean(optional=True), prefix="--input-gfa1-file", doc=InputDocumentation(doc="[class java.io.File]  input GFA 1.0 file, default stdin [optional]")), ToolInput(tag="in_output_gfa_one_file", input_type=File(optional=True), prefix="--output-gfa1-file", doc=InputDocumentation(doc="[class java.io.File]  output GFA 1.0 file, default stdout [optional]")), ToolInput(tag="in_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_gfa_one_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_gfa_one_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output GFA 1.0 file, default stdout [optional]"))], container="quay.io/biocontainers/dsh-bio:2.0.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Compress_Gfa1_V0_1_0().translate("wdl")

