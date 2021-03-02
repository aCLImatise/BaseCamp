from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Rgt_Tdf_Integrate_V0_1_0 = CommandToolBuilder(tool="rgt_TDF_integrate", base_command=["rgt-TDF", "integrate"], inputs=[ToolInput(tag="in_path", input_type=Boolean(optional=True), prefix="-path", doc=InputDocumentation(doc="Define the path of the project.")), ToolInput(tag="in_exp", input_type=Boolean(optional=True), prefix="-exp", doc=InputDocumentation(doc="Include expression score for ranking."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tdf_Integrate_V0_1_0().translate("wdl", allow_empty_container=True)

