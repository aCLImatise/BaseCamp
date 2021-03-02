from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Makedesignfiles_Py_V0_1_0 = CommandToolBuilder(tool="makeDesignFiles.py", base_command=["makeDesignFiles.py"], inputs=[ToolInput(tag="in_binsize", input_type=Int(optional=True), prefix="--binsize", doc=InputDocumentation(doc="")), ToolInput(tag="in_max_l_brown_est", input_type=Int(optional=True), prefix="--maxLBrownEst", doc=InputDocumentation(doc="")), ToolInput(tag="in_max_fra_glen", input_type=Int(optional=True), prefix="--maxFragLen", doc=InputDocumentation(doc="")), ToolInput(tag="in_m_infra_glen", input_type=Int(optional=True), prefix="--minFragLen", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makedesignfiles_Py_V0_1_0().translate("wdl", allow_empty_container=True)

