from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Draw_Heatmap_V0_1_0 = CommandToolBuilder(tool="rsat_draw_heatmap", base_command=["rsat", "draw-heatmap"], inputs=[ToolInput(tag="in_draw_heat_map", input_type=String(), position=0, doc=InputDocumentation(doc="[1mVERSION[0m")), ToolInput(tag="in_util", input_type=String(), position=0, doc=InputDocumentation(doc="[1mUSAGE[0m")), ToolInput(tag="in_heat_map_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-out_format img_format[0m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Draw_Heatmap_V0_1_0().translate("wdl", allow_empty_container=True)

