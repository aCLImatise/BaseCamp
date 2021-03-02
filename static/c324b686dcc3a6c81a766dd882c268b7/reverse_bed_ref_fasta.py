from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Reverse_Bed_Ref_Fasta_V0_1_0 = CommandToolBuilder(tool="reverse_bed_ref_fasta", base_command=["reverse_bed", "ref_fasta"], inputs=[ToolInput(tag="in_reverse_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_in", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_fast_a", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_out", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pomoxis:0.3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reverse_Bed_Ref_Fasta_V0_1_0().translate("wdl")

