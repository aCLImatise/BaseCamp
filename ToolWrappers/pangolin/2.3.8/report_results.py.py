from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Report_Results_Py_V0_1_0 = CommandToolBuilder(tool="report_results.py", base_command=["report_results.py"], inputs=[ToolInput(tag="in_pangolin_output", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="pangolin output")), ToolInput(tag="in_background_data_csv", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="background data csv")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="output"))], outputs=[], container="quay.io/biocontainers/pangolin:2.3.8--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Report_Results_Py_V0_1_0().translate("wdl")

