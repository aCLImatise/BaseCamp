from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Nf_Core_Launch_V0_1_0 = CommandToolBuilder(tool="nf_core_launch", base_command=["nf-core", "launch"], inputs=[ToolInput(tag="in_params", input_type=File(optional=True), prefix="--params", doc=InputDocumentation(doc="Local parameter settings file in JSON.")), ToolInput(tag="in_direct", input_type=Boolean(optional=True), prefix="--direct", doc=InputDocumentation(doc="Uses given values from the parameter file directly.")), ToolInput(tag="in_pipeline_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Launch_V0_1_0().translate("wdl", allow_empty_container=True)

