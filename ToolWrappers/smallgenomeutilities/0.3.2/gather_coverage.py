from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Gather_Coverage_V0_1_0 = CommandToolBuilder(tool="gather_coverage", base_command=["gather_coverage"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="unified coverage table output file")), ToolInput(tag="in_stats", input_type=File(optional=True), prefix="--stats", doc=InputDocumentation(doc="file to write per-position cohort-wide stats to")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads")), ToolInput(tag="in_tsv", input_type=String(), position=0, doc=InputDocumentation(doc="per sample coverage table input file(s)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="unified coverage table output file"))], container="quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gather_Coverage_V0_1_0().translate("wdl")

