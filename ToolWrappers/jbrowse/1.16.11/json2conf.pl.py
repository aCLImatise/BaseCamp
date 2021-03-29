from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Json2Conf_Pl_V0_1_0 = CommandToolBuilder(tool="json2conf.pl", base_command=["json2conf.pl"], inputs=[ToolInput(tag="in_track", input_type=Boolean(optional=True), prefix="--track", doc=InputDocumentation(doc="The file is a track configuration of the type used with\nadd-track-json.pl."))], outputs=[], container="quay.io/biocontainers/jbrowse:1.16.11--pl526hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Json2Conf_Pl_V0_1_0().translate("wdl")

