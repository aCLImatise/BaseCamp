from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Get_Wiggle_Pl_V0_1_0 = CommandToolBuilder(tool="get_wiggle.pl", base_command=["get_wiggle.pl"], inputs=[ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="<string>        Prefix for MIRA assembly files (mandatory), expects to find prefix.unpadded.fasta and prefix.padded.fasta")), ToolInput(tag="in_wiggle", input_type=Boolean(optional=True), prefix="--wiggle", doc=InputDocumentation(doc="<string>        Wiggle file (optional), if not specified script will expect to find a file *.wig in the same directory as assembly results")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mitobim:1.9.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Wiggle_Pl_V0_1_0().translate("wdl")

