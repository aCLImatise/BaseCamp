from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Locicounterwithlabels_Py_V0_1_0 = CommandToolBuilder(tool="lociCounterWithLabels.py", base_command=["lociCounterWithLabels.py"], inputs=[ToolInput(tag="in_fai_file", input_type=File(optional=True), prefix="--fai-file", doc=InputDocumentation(doc=".fa.fai file (default: None)")), ToolInput(tag="in_beds", input_type=Boolean(optional=True), prefix="-beds", doc=InputDocumentation(doc="[BED_FILES [BED_FILES ...]], --bed-files [BED_FILES [BED_FILES ...]]\nBED files (default: None)")), ToolInput(tag="in_bed_out", input_type=File(optional=True), prefix="--bed-out", doc=InputDocumentation(doc="BED file out (default: None)")), ToolInput(tag="in_labels", input_type=Boolean(optional=True), prefix="-labels", doc=InputDocumentation(doc="[BED_LABELS [BED_LABELS ...]], --bed-labels [BED_LABELS [BED_LABELS ...]]\nUse these labels instead of bed file names (default:\nNone)\n"))], outputs=[ToolOutput(tag="out_bed_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_bed_out", type_hint=File()), doc=OutputDocumentation(doc="BED file out (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Locicounterwithlabels_Py_V0_1_0().translate("wdl", allow_empty_container=True)

