from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Cnvkit_Py_Access_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_access", base_command=["cnvkit.py", "access"], inputs=[ToolInput(tag="in_min_gap_size", input_type=Int(optional=True), prefix="--min-gap-size", doc=InputDocumentation(doc="Minimum gap size between accessible sequence regions.\nRegions separated by less than this distance will be\njoined together. [Default: 5000]")), ToolInput(tag="in_exclude", input_type=String(optional=True), prefix="--exclude", doc=InputDocumentation(doc="Additional regions to exclude, in BED format. Can be\nused multiple times.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name\n"))], container="quay.io/biocontainers/cnvkit:0.9.8--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Access_V0_1_0().translate("wdl")

