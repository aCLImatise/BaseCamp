from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Contig_Cleaner_V0_1_0 = CommandToolBuilder(tool="contig_cleaner", base_command=["contig_cleaner"], inputs=[ToolInput(tag="in_cut_off_length", input_type=Int(optional=True), prefix="--cutoff_length", doc=InputDocumentation(doc="Minimum acceptable contig length [2000]")), ToolInput(tag="in_hit_percent_id", input_type=Int(optional=True), prefix="--hit_percent_id", doc=InputDocumentation(doc="Minimum acceptable hit percent id for contained\ncontigs [95]")), ToolInput(tag="in_skip", input_type=File(optional=True), prefix="--skip", doc=InputDocumentation(doc="File of contig ids to skip")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep all temp files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Contig_Cleaner_V0_1_0().translate("wdl", allow_empty_container=True)

