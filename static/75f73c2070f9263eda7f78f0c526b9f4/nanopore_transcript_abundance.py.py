from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nanopore_Transcript_Abundance_Py_V0_1_0 = CommandToolBuilder(tool="nanopore_transcript_abundance.py", base_command=["nanopore_transcript_abundance.py"], inputs=[ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nanosim:2.6.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanopore_Transcript_Abundance_Py_V0_1_0().translate("wdl")

