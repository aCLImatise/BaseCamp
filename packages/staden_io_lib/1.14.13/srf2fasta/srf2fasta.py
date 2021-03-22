from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Srf2Fasta_V0_1_0 = CommandToolBuilder(tool="srf2fasta", base_command=["srf2fasta"], inputs=[ToolInput(tag="in_c", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="")), ToolInput(tag="in_archive_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Srf2Fasta_V0_1_0().translate("wdl")

