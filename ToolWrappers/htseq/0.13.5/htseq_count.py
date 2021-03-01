from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Htseq_Count_V0_1_0 = CommandToolBuilder(tool="htseq_count", base_command=["htseq-count"], inputs=[ToolInput(tag="in_alignment_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/htseq:0.13.5--py37h0498b6d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htseq_Count_V0_1_0().translate("wdl")

