from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Econtact_V0_1_0 = CommandToolBuilder(tool="econtact", base_command=["econtact"], inputs=[ToolInput(tag="in_email", input_type=Boolean(optional=True), prefix="-email", doc=InputDocumentation(doc="Contact person's address")), ToolInput(tag="in_tool", input_type=Boolean(optional=True), prefix="-tool", doc=InputDocumentation(doc="Name of script or program"))], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Econtact_V0_1_0().translate("wdl")

