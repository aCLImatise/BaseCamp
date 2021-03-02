from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Boolean

Createchemistryheader_Py_Input_Alignment_File_V0_1_0 = CommandToolBuilder(tool="createChemistryHeader.py_input_alignment_file", base_command=["createChemistryHeader.py", "input_alignment_file"], inputs=[ToolInput(tag="in_bas_files", input_type=Array(t=String(), optional=True), prefix="--bas_files", doc=InputDocumentation(doc="")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="")), ToolInput(tag="in_get_chemistry_header_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Createchemistryheader_Py_Input_Alignment_File_V0_1_0().translate("wdl", allow_empty_container=True)

