from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bwcat_V0_1_0 = CommandToolBuilder(tool="bwcat", base_command=["bwcat"], inputs=[ToolInput(tag="in_input_path", input_type=Boolean(optional=True), prefix="--input-path", doc=InputDocumentation(doc="[file]                          Path to the input bigwig file")), ToolInput(tag="in_region", input_type=Boolean(optional=True), prefix="--region", doc=InputDocumentation(doc="[string]                            Region or bw file to print to screen format. NB start should be 0 based: (contig:start-stop)")), ToolInput(tag="in_include_na", input_type=Boolean(optional=True), prefix="--include-na", doc=InputDocumentation(doc="Include NA regions in output")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="[file]                              File to write bw output to [default: stdout]"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="[file]                              File to write bw output to [default: stdout]"))], container="quay.io/biocontainers/cgpbigwig:1.6.0--h93d22ca_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwcat_V0_1_0().translate("wdl")

