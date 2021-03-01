from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Plot_Sequence_Properties_Py_Input_Fastx_V0_1_0 = CommandToolBuilder(tool="plot_sequence_properties.py_input_fastx", base_command=["plot_sequence_properties.py", "input_fastx"], inputs=[ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_b", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_plot_sequence_properties_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Sequence_Properties_Py_Input_Fastx_V0_1_0().translate("wdl", allow_empty_container=True)

