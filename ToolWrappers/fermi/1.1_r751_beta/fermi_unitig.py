from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Fermi_Unitig_V0_1_0 = CommandToolBuilder(tool="fermi_unitig", base_command=["fermi", "unitig"], inputs=[ToolInput(tag="in_min_match", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="min match [0]")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_rank_file", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="rank file [null]")), ToolInput(tag="in_reads_dot_fmd", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Unitig_V0_1_0().translate("wdl", allow_empty_container=True)

