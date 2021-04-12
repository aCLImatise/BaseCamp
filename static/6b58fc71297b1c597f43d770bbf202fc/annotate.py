from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory

Annotate_V0_1_0 = CommandToolBuilder(tool="annotate", base_command=["annotate"], inputs=[ToolInput(tag="in_kegg", input_type=File(optional=True), prefix="--kegg", doc=InputDocumentation(doc="(if the -g/--go is specified, the -k/--kegg are ignored)")), ToolInput(tag="in_network", input_type=File(optional=True), prefix="--network", doc=InputDocumentation(doc="(if -n is specified, the -m is ignored)")), ToolInput(tag="in_pval", input_type=Int(optional=True), prefix="--pval", doc=InputDocumentation(doc="p value cutoff (default: 0.05)")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="cpu cores (default: 2)"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="cpu cores (default: 2)"))], container="quay.io/biocontainers/gcen:0.5.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annotate_V0_1_0().translate("wdl")

