from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Get_Scores_In_Intervals_Py_V0_1_0 = CommandToolBuilder(tool="get_scores_in_intervals.py", base_command=["get_scores_in_intervals.py"], inputs=[ToolInput(tag="in_score_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_interval_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_file", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Scores_In_Intervals_Py_V0_1_0().translate("wdl")

