from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Aggregate_Scores_In_Intervals_Py_Score_File_V0_1_0 = CommandToolBuilder(tool="aggregate_scores_in_intervals.py_score_file", base_command=["aggregate_scores_in_intervals.py", "score_file"], inputs=[ToolInput(tag="in_binned", input_type=Boolean(optional=True), prefix="--binned", doc=InputDocumentation(doc="'score_file' is actually a directory of binned array")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="-m MASK, --mask=MASK  bed file containing regions not to consider valid"))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aggregate_Scores_In_Intervals_Py_Score_File_V0_1_0().translate("wdl")

