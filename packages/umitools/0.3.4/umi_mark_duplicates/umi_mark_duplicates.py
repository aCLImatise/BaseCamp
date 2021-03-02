from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Umi_Mark_Duplicates_V0_1_0 = CommandToolBuilder(tool="umi_mark_duplicates", base_command=["umi_mark_duplicates"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="the input bam file")), ToolInput(tag="in_processes", input_type=Int(optional=True), prefix="--processes", doc=InputDocumentation(doc="number of processes")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="turn on debug mode")), ToolInput(tag="in_count", input_type=Boolean(optional=True), prefix="--count", doc=InputDocumentation(doc="Count the number of raw reads for each locus\n(determined by pairs)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Umi_Mark_Duplicates_V0_1_0().translate("wdl", allow_empty_container=True)

