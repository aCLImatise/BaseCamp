from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, String

Artic_Tools_Get_Scheme_V0_1_0 = CommandToolBuilder(tool="artic_tools_get_scheme", base_command=["artic-tools", "get_scheme"], inputs=[ToolInput(tag="in_scheme_version", input_type=Int(optional=True), prefix="--schemeVersion", doc=InputDocumentation(doc="=0      The ARTIC primer scheme version (default = latest)")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outDir", doc=InputDocumentation(doc="The directory to write the scheme and reference sequence to")), ToolInput(tag="in_scheme", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/artic-tools:0.3.0--hee4d88c_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Artic_Tools_Get_Scheme_V0_1_0().translate("wdl")

