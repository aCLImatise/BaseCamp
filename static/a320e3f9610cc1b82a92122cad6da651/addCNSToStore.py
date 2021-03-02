from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Addcnstostore_V0_1_0 = CommandToolBuilder(tool="addCNSToStore", base_command=["addCNSToStore"], inputs=[ToolInput(tag="in_path", input_type=Boolean(optional=True), prefix="-path", doc=InputDocumentation(doc="Path to smrtportal installation. Required if smrtportal is not in path.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="-prefix", doc=InputDocumentation(doc="Prefix for stores to write to"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Addcnstostore_V0_1_0().translate("wdl", allow_empty_container=True)

