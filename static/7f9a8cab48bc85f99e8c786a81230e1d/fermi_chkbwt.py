from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fermi_Chkbwt_V0_1_0 = CommandToolBuilder(tool="fermi_chkbwt", base_command=["fermi", "chkbwt"], inputs=[ToolInput(tag="in_load_fmindex_memory", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="load the FM-index as a memory mapped file")), ToolInput(tag="in_check_rank", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="check rank")), ToolInput(tag="in_print_bwt_stdout", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="print the BWT to the stdout")), ToolInput(tag="in_idx_based_ot_bwt", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Chkbwt_V0_1_0().translate("wdl", allow_empty_container=True)

