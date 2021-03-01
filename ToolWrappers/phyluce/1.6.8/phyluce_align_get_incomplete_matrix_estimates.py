from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Array

Phyluce_Align_Get_Incomplete_Matrix_Estimates_V0_1_0 = CommandToolBuilder(tool="phyluce_align_get_incomplete_matrix_estimates", base_command=["phyluce_align_get_incomplete_matrix_estimates"], inputs=[ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="The probe.matches.sqlite database to query")), ToolInput(tag="in_min", input_type=Int(optional=True), prefix="--min", doc=InputDocumentation(doc="The minimum of the range to evaluate")), ToolInput(tag="in_max", input_type=Int(optional=True), prefix="--max", doc=InputDocumentation(doc="The maximum of the range to evaluate")), ToolInput(tag="in_step", input_type=String(optional=True), prefix="--step", doc=InputDocumentation(doc="The step of the range to evaluate")), ToolInput(tag="in_exclude", input_type=Array(t=String(), optional=True), prefix="--exclude", doc=InputDocumentation(doc="Taxa to exclude")), ToolInput(tag="in_include", input_type=Array(t=String(), optional=True), prefix="--include", doc=InputDocumentation(doc="Taxa to include\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Get_Incomplete_Matrix_Estimates_V0_1_0().translate("wdl", allow_empty_container=True)

