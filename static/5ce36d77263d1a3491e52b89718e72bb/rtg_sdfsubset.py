from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Boolean

Rtg_Sdfsubset_V0_1_0 = CommandToolBuilder(tool="rtg_sdfsubset", base_command=["rtg", "sdfsubset"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="SDF containing sequences")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="output SDF")), ToolInput(tag="in_end_id", input_type=Int(optional=True), prefix="--end-id", doc=InputDocumentation(doc="exclusive upper bound on sequence id")), ToolInput(tag="in_id_file", input_type=File(optional=True), prefix="--id-file", doc=InputDocumentation(doc="file containing sequence ids, or sequence names if --names\nflag is set, one per line")), ToolInput(tag="in_names", input_type=Boolean(optional=True), prefix="--names", doc=InputDocumentation(doc="interpret supplied sequence as names instead of numeric")), ToolInput(tag="in_ids", input_type=String(), position=0, doc=InputDocumentation(doc="--start-id=INT inclusive lower bound on sequence id"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Sdfsubset_V0_1_0().translate("wdl", allow_empty_container=True)

