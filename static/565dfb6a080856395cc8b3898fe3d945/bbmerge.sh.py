from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Bbmerge_Sh_V0_1_0 = CommandToolBuilder(tool="bbmerge.sh", base_command=["bbmerge.sh"], inputs=[ToolInput(tag="in_x_mx", input_type=Boolean(optional=True), prefix="-Xmx", doc=InputDocumentation(doc="This will set Java's memory usage,\noverriding autodetection.\nFor example, -Xmx400m will specify 400 MB RAM.")), ToolInput(tag="in_e_oom", input_type=Boolean(optional=True), prefix="-eoom", doc=InputDocumentation(doc="This flag will cause the process to exit if an\nout-of-memory exception occurs.  Requires Java 8u92+.")), ToolInput(tag="in_da", input_type=Boolean(optional=True), prefix="-da", doc=InputDocumentation(doc="Disable assertions."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bbmerge_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

