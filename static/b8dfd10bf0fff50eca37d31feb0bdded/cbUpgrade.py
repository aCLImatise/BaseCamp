from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Cbupgrade_V0_1_0 = CommandToolBuilder(tool="cbUpgrade", base_command=["cbUpgrade"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="show debug messages")), ToolInput(tag="in_output_directory_default", input_type=Directory(optional=True), prefix="--outDir", doc=InputDocumentation(doc="output directory, default can be set through the env.\nvariable CBOUT, current value: none")), ToolInput(tag="in_port", input_type=String(optional=True), prefix="--port", doc=InputDocumentation(doc="after upgrade, start HTTP server bound to port and\nserve <outDir>")), ToolInput(tag="in_code", input_type=Boolean(optional=True), prefix="--code", doc=InputDocumentation(doc="also update the javascript code")), ToolInput(tag="in_dev", input_type=Boolean(optional=True), prefix="--dev", doc=InputDocumentation(doc="only for developers: do not add version to js/css\nlinks\n")), ToolInput(tag="in_var_5", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory_default", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_default", type_hint=File()), doc=OutputDocumentation(doc="output directory, default can be set through the env.\nvariable CBOUT, current value: none"))], container="quay.io/biocontainers/ucsc-cell-browser:0.7.15--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cbupgrade_V0_1_0().translate("wdl")

