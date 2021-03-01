from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String, Boolean

Cmsip_V0_1_0 = CommandToolBuilder(tool="cmsip", base_command=["cmsip"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file in YAML format.")), ToolInput(tag="in_define_variablevalue_suppress", input_type=Array(t=String(), optional=True), prefix="-D", doc=InputDocumentation(doc="Define variable=value to suppress configuration file.\ne.g. '-D dhmrinfo.verbose=False'")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmsip_V0_1_0().translate("wdl", allow_empty_container=True)

