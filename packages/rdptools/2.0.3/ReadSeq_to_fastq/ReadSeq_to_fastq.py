from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Readseq_To_Fastq_V0_1_0 = CommandToolBuilder(tool="ReadSeq_to_fastq", base_command=["ReadSeq", "to-fastq"], inputs=[ToolInput(tag="in_to_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_qual_file", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readseq_To_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

