from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Seqcluster_Install_V0_1_0 = CommandToolBuilder(tool="seqcluster_install", base_command=["seqcluster_install"], inputs=[ToolInput(tag="in_tools", input_type=String(optional=True), prefix="--tools", doc=InputDocumentation(doc="install tools")), ToolInput(tag="in_data", input_type=File(optional=True), prefix="--data", doc=InputDocumentation(doc="path install data")), ToolInput(tag="in_upgrade", input_type=Boolean(optional=True), prefix="--upgrade", doc=InputDocumentation(doc="upgrade seqcluster"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqcluster_Install_V0_1_0().translate("wdl", allow_empty_container=True)

