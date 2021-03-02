from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pvacseq_Binding_Filter_Output_File_V0_1_0 = CommandToolBuilder(tool="pvacseq_binding_filter_output_file", base_command=["pvacseq", "binding_filter", "output_file"], inputs=[ToolInput(tag="in_b", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_pvac_seq", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_binding_filter", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pvacseq_Binding_Filter_Output_File_V0_1_0().translate("wdl", allow_empty_container=True)

