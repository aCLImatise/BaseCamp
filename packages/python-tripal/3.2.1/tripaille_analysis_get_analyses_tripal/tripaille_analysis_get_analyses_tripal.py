from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Tripaille_Analysis_Get_Analyses_Tripal_V0_1_0 = CommandToolBuilder(tool="tripaille_analysis_get_analyses_tripal", base_command=["tripaille", "analysis", "get_analyses_tripal"], inputs=[ToolInput(tag="in_analysis_id", input_type=Int(optional=True), prefix="--analysis_id", doc=InputDocumentation(doc="An analysis entity/node ID"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Analysis_Get_Analyses_Tripal_V0_1_0().translate("wdl", allow_empty_container=True)

