from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pat_Sel_In_Pat_File_V0_1_0 = CommandToolBuilder(tool="pat_sel_in_pat_file", base_command=["pat_sel", "in_pat_file"], inputs=[ToolInput(tag="in_pat_sel", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_no_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_pat_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_pat_file", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pat_Sel_In_Pat_File_V0_1_0().translate("wdl", allow_empty_container=True)

