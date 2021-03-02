from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Aln2Wig_V0_1_0 = CommandToolBuilder(tool="aln2wig", base_command=["aln2wig"], inputs=[ToolInput(tag="in_filename", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="<filename>")), ToolInput(tag="in_use_span_notation", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Use span notation")), ToolInput(tag="in_name_of_track", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Name of the track"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aln2Wig_V0_1_0().translate("wdl")

