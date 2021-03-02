from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Fastq_Pair_V0_1_0 = CommandToolBuilder(tool="fastq_pair", base_command=["fastq_pair"], inputs=[ToolInput(tag="in_size_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="size (default 100003)")), ToolInput(tag="in_number_elements_bucket", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="the number of elements in each bucket in the table")), ToolInput(tag="in_output_mainly_debugging", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="output. This is mainly for debugging"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Pair_V0_1_0().translate("wdl", allow_empty_container=True)

