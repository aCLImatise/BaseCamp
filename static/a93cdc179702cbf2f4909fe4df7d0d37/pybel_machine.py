from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pybel_Machine_V0_1_0 = CommandToolBuilder(tool="pybel_machine", base_command=["pybel", "machine"], inputs=[ToolInput(tag="in_local", input_type=Boolean(optional=True), prefix="--local", doc=InputDocumentation(doc="Upload to local database.")), ToolInput(tag="in_host", input_type=String(optional=True), prefix="--host", doc=InputDocumentation(doc="URL of BEL Commons. Defaults to https://bel-")), ToolInput(tag="in_commons_dots_cai_dot_fraunhofer_dot_de", input_type=String(), position=0, doc=InputDocumentation(doc="--help       Show this message and exit."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pybel_Machine_V0_1_0().translate("wdl", allow_empty_container=True)

