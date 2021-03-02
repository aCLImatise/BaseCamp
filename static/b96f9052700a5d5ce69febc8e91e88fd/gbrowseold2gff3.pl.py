from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gbrowseold2Gff3_Pl_V0_1_0 = CommandToolBuilder(tool="gbrowseold2gff3.pl", base_command=["gbrowseold2gff3.pl"], inputs=[ToolInput(tag="in_hints", input_type=String(), position=0, doc=InputDocumentation(doc="convert gff format for intron hints to gff3")), ToolInput(tag="in_source", input_type=String(), position=1, doc=InputDocumentation(doc="fill this into the second column"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gbrowseold2Gff3_Pl_V0_1_0().translate("wdl")

