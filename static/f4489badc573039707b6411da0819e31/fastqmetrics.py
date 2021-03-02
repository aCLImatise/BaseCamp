from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Fastqmetrics_V0_1_0 = CommandToolBuilder(tool="fastqmetrics", base_command=["fastqmetrics"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Set the allowed number of threads to be used by the\nscript. This only applies to bam and fastq format as\ndata source\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc="Fastq file to extract features from."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqmetrics_V0_1_0().translate("wdl", allow_empty_container=True)

