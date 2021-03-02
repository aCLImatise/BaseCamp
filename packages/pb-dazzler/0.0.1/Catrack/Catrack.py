from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Catrack_V0_1_0 = CommandToolBuilder(tool="Catrack", base_command=["Catrack"], inputs=[ToolInput(tag="in__verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": verbose")), ToolInput(tag="in_delete_individual_blocks", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": delete individual blocks after a successful concatenation")), ToolInput(tag="in_force_overwrite_already", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": force overwrite of track if already present")), ToolInput(tag="in_vfd", input_type=Boolean(optional=True), prefix="-vfd", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Catrack_V0_1_0().translate("wdl", allow_empty_container=True)

