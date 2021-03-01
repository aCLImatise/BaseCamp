from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Draw_Model_Graph_Sequence_Number_V0_1_0 = CommandToolBuilder(tool="draw_model_graph_sequence_number", base_command=["draw_model_graph", "sequence_number"], inputs=[ToolInput(tag="in_draw_model_graph", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_model", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_number", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Draw_Model_Graph_Sequence_Number_V0_1_0().translate("wdl", allow_empty_container=True)

