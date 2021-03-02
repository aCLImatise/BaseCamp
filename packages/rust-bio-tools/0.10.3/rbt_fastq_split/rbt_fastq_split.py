from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rbt_Fastq_Split_V0_1_0 = CommandToolBuilder(tool="rbt_fastq_split", base_command=["rbt", "fastq-split"], inputs=[ToolInput(tag="in_chunks", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbt_Fastq_Split_V0_1_0().translate("wdl", allow_empty_container=True)

