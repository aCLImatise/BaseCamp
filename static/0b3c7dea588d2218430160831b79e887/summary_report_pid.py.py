from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean

Summary_Report_Pid_Py_V0_1_0 = CommandToolBuilder(tool="summary_report_pid.py", base_command=["summary_report_pid.py"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="REQUIRED.Input pID folder")), ToolInput(tag="in_group", input_type=Boolean(optional=True), prefix="--group", doc=InputDocumentation(doc="Creates a group report instead of individual (Default\nTrue)\n"))], outputs=[], container="quay.io/biocontainers/plasmidid:1.6.4--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summary_Report_Pid_Py_V0_1_0().translate("wdl")

