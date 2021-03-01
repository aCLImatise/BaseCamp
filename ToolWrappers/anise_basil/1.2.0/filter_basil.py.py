from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Filter_Basil_Py_V0_1_0 = CommandToolBuilder(tool="filter_basil.py", base_command=["filter_basil.py"], inputs=[ToolInput(tag="in_input_file_name", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file name.")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file name.")), ToolInput(tag="in_min_oea_each_side", input_type=Int(optional=True), prefix="--min-oea-each-side", doc=InputDocumentation(doc="Minimal OEA coverage on each side.")), ToolInput(tag="in_min_oea_one_side", input_type=Int(optional=True), prefix="--min-oea-one-side", doc=InputDocumentation(doc="Minimal OEA coverage on one side.")), ToolInput(tag="in_min_oea_sum", input_type=Int(optional=True), prefix="--min-oea-sum", doc=InputDocumentation(doc="Minimal total OEA coverage.")), ToolInput(tag="in_min_clipping_each_side", input_type=Int(optional=True), prefix="--min-clipping-each-side", doc=InputDocumentation(doc="Minimal OEA coverage on each side.")), ToolInput(tag="in_min_clipping_sum", input_type=Int(optional=True), prefix="--min-clipping-sum", doc=InputDocumentation(doc="Minimal total OEA coverage.")), ToolInput(tag="in_min_g_score", input_type=Int(optional=True), prefix="--min-gscore", doc=InputDocumentation(doc="Smallest geometric mean score\n"))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="Output file name."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Basil_Py_V0_1_0().translate("wdl", allow_empty_container=True)

