from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Dram_Setup_Py_Export_Config_V0_1_0 = CommandToolBuilder(tool="DRAM_setup.py_export_config", base_command=["DRAM-setup.py", "export_config"], inputs=[ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="File to save exported CONFIG file to, by default\nwillprint CONFIG (default: None)\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File to save exported CONFIG file to, by default\nwillprint CONFIG (default: None)\n"))], container="quay.io/biocontainers/dram:1.2.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dram_Setup_Py_Export_Config_V0_1_0().translate("wdl")

