from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Readseq_To_Fasta_V0_1_0 = CommandToolBuilder(tool="ReadSeq_to_fasta", base_command=["ReadSeq", "to-fasta"], inputs=[ToolInput(tag="in_mask", input_type=String(optional=True), prefix="--mask", doc=InputDocumentation(doc="Mask sequence name indicating columns to drop")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readseq_To_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

