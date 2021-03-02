from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Calculate_Snp_Distances_Py_V0_1_0 = CommandToolBuilder(tool="calculate_snp_distances.py", base_command=["calculate_snp_distances.py"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force processing even when result file already exists\nand is newer than inputs (default: False)")), ToolInput(tag="in_pairs", input_type=File(optional=True), prefix="--pairs", doc=InputDocumentation(doc="Relative or absolute path to the pairwise distance\noutput file. (default: None)")), ToolInput(tag="in_matrix", input_type=File(optional=True), prefix="--matrix", doc=InputDocumentation(doc="Relative or absolute path to the distance matrix\noutput file. (default: None)")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose message level (0=no info, 5=lots) (default: 1)")), ToolInput(tag="in_cfsan_snp_pipeline", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_distance", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_pairs", output_type=File(optional=True), selector=InputSelector(input_to_select="in_pairs", type_hint=File()), doc=OutputDocumentation(doc="Relative or absolute path to the pairwise distance\noutput file. (default: None)")), ToolOutput(tag="out_matrix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_matrix", type_hint=File()), doc=OutputDocumentation(doc="Relative or absolute path to the distance matrix\noutput file. (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calculate_Snp_Distances_Py_V0_1_0().translate("wdl", allow_empty_container=True)

