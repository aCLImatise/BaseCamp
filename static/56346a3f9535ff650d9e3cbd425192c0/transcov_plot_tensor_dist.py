from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Transcov_Plot_Tensor_Dist_V0_1_0 = CommandToolBuilder(tool="transcov_plot_tensor_dist", base_command=["transcov", "plot-tensor-dist"], inputs=[ToolInput(tag="in_input_tensor", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transcov_Plot_Tensor_Dist_V0_1_0().translate("wdl", allow_empty_container=True)

