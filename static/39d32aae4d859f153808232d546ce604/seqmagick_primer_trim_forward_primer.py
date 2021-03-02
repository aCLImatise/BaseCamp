from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Seqmagick_Primer_Trim_Forward_Primer_V0_1_0 = CommandToolBuilder(tool="seqmagick_primer_trim_forward_primer", base_command=["seqmagick", "primer-trim", "forward_primer"], inputs=[ToolInput(tag="in_reverse_is_rev_comp", input_type=Boolean(optional=True), prefix="--reverse-is-revcomp", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_magick", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_primer_trim", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/seqmagick:0.8.4--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqmagick_Primer_Trim_Forward_Primer_V0_1_0().translate("wdl")

