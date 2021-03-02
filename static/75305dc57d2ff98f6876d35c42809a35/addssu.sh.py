from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Addssu_Sh_V0_1_0 = CommandToolBuilder(tool="addssu.sh", base_command=["addssu.sh"], inputs=[ToolInput(tag="in_x_mx", input_type=Boolean(optional=True), prefix="-Xmx", doc=InputDocumentation(doc="This will set Java's memory usage, overriding autodetection.\n-Xmx20g will specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\nThe max is typically 85% of physical memory.")), ToolInput(tag="in_da", input_type=Boolean(optional=True), prefix="-da", doc=InputDocumentation(doc="Disable assertions.")), ToolInput(tag="in_in", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Addssu_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

