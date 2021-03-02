from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Nb_Bl_Py_V0_1_0 = CommandToolBuilder(tool="NB_BL.py", base_command=["NB-BL.py"], inputs=[ToolInput(tag="in_nb_results", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_blastn_results", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_results_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nb_Bl_Py_V0_1_0().translate("wdl", allow_empty_container=True)

