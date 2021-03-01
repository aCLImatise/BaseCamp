from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Falconc_Version_V0_1_0 = CommandToolBuilder(tool="falconc_version", base_command=["falconc", "version"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in_version", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Version_V0_1_0().translate("wdl")

