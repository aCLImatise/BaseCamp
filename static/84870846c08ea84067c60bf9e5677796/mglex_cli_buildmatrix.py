from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Mglex_Cli_Buildmatrix_V0_1_0 = CommandToolBuilder(tool="mglex_cli_buildmatrix", base_command=["mglex-cli", "buildmatrix"], inputs=[ToolInput(tag="in_seeds", input_type=File(optional=True), prefix="--seeds", doc=InputDocumentation(doc="Space-separated sequence identifier per line")), ToolInput(tag="in_identifiers", input_type=File(optional=True), prefix="--identifiers", doc=InputDocumentation(doc="Sequence identifiers; one per line; default standard input")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_build_matrix", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mglex_Cli_Buildmatrix_V0_1_0().translate("wdl", allow_empty_container=True)

