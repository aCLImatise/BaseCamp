from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Igdiscover_Merge_V0_1_0 = CommandToolBuilder(tool="igdiscover_merge", base_command=["igdiscover", "merge"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads")), ToolInput(tag="in_no_cache", input_type=Boolean(optional=True), prefix="--no-cache", doc=InputDocumentation(doc="Disable cache. Default: Determined by configuration")), ToolInput(tag="in_reads_one", input_type=Int(), position=0, doc=InputDocumentation(doc="Forward reads FASTQ file")), ToolInput(tag="in_reads_two", input_type=Int(), position=1, doc=InputDocumentation(doc="Reverse reads FASTQ file")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="Output file (compressed FASTQ)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

