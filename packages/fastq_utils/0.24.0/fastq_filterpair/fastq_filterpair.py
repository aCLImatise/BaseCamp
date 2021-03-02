from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Fastq_Filterpair_V0_1_0 = CommandToolBuilder(tool="fastq_filterpair", base_command=["fastq_filterpair"], inputs=[ToolInput(tag="in_filter_pair", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q_one", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q_two", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_paired_one", input_type=Int(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_paired_two", input_type=Int(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_unpaired", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_sorted", input_type=String(optional=True), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Filterpair_V0_1_0().translate("wdl", allow_empty_container=True)

