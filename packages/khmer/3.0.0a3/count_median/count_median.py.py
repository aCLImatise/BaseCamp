from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Count_Median_Py_V0_1_0 = CommandToolBuilder(tool="count_median.py", base_command=["count-median.py"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="print citation information")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite output file if it exists (default: False)")), ToolInput(tag="in_count_kmers_summary", input_type=String(), position=0, doc=InputDocumentation(doc="Count k-mers summary stats for sequences")), ToolInput(tag="in_input_count_graph_filename", input_type=String(), position=0, doc=InputDocumentation(doc="input k-mer countgraph filename")), ToolInput(tag="in_input_sequence_filename", input_type=String(), position=1, doc=InputDocumentation(doc="input FAST[AQ] sequence filename")), ToolInput(tag="in_output_summary_filename", input_type=String(), position=2, doc=InputDocumentation(doc="output summary filename"))], outputs=[ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Overwrite output file if it exists (default: False)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Count_Median_Py_V0_1_0().translate("wdl", allow_empty_container=True)

