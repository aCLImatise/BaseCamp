from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Datafunk_Mask_V0_1_0 = CommandToolBuilder(tool="datafunk_mask", base_command=["datafunk", "mask"], inputs=[ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="Fasta file to mask")), ToolInput(tag="in_output_fast_a", input_type=File(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="Fasta file to write")), ToolInput(tag="in_masktxt__maskfile", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=", mask.txt, --mask-file mask.txt\nFile with mask instructions to parse\n"))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Mask_V0_1_0().translate("wdl")

