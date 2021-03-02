from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Fermi_Unpack_V0_1_0 = CommandToolBuilder(tool="fermi_unpack", base_command=["fermi", "unpack"], inputs=[ToolInput(tag="in_index_read_output", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="index of the read to output, starting from 0 [null]")), ToolInput(tag="in_load_fmindex_memory", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="load the FM-index as a memory mapped file")), ToolInput(tag="in_seqs_dot_bwt", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Unpack_V0_1_0().translate("wdl", allow_empty_container=True)

