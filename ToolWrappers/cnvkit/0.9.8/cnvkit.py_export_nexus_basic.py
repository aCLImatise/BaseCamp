from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Cnvkit_Py_Export_Nexus_Basic_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_export_nexus_basic", base_command=["cnvkit.py", "export", "nexus-basic"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name.\n")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc="Log2 copy ratio data file (*.cnr), the output of the\n'fix' sub-command."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name.\n"))], container="quay.io/biocontainers/cnvkit:0.9.8--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Export_Nexus_Basic_V0_1_0().translate("wdl")

