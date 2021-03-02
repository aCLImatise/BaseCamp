from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Check_Comparate_Design_File_Py_V0_1_0 = CommandToolBuilder(tool="check_comparate_design_file.py", base_command=["check_comparate_design_file.py"], inputs=[ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Input Design File. See BASE User Guide for formatting\nhelp [REQUIRED]")), ToolInput(tag="in_comp_num", input_type=Int(optional=True), prefix="--compNum", doc=InputDocumentation(doc="Number of comparates")), ToolInput(tag="in_name_log_file", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Name of log file that checks design file")), ToolInput(tag="in_check_usersupplied_file", input_type=String(), position=0, doc=InputDocumentation(doc="Check user-supplied Pre-Bayesian design file for correct formatting and"))], outputs=[], container="quay.io/biocontainers/bayesase:21.1.13.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Comparate_Design_File_Py_V0_1_0().translate("wdl")

