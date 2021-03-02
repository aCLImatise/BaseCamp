from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String, Boolean

Summary_From_Stats_V0_1_0 = CommandToolBuilder(tool="summary_from_stats", base_command=["summary_from_stats"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output summary to file instead of stderr. (default:\n<_io.TextIOWrapper name='<stderr>' mode='w'\nencoding='utf-8'>)")), ToolInput(tag="in_percentiles", input_type=Array(t=String(), optional=True), prefix="--percentiles", doc=InputDocumentation(doc="Percentiles for summary. (default: (10, 50, 90))")), ToolInput(tag="in_per_reference", input_type=Boolean(optional=True), prefix="--per_reference", doc=InputDocumentation(doc="Also output a summary for each reference. (default:\nFalse)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output summary to file instead of stderr. (default:\n<_io.TextIOWrapper name='<stderr>' mode='w'\nencoding='utf-8'>)"))], container="quay.io/biocontainers/pomoxis:0.3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summary_From_Stats_V0_1_0().translate("wdl")

