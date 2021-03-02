from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Mafranges_V0_1_0 = CommandToolBuilder(tool="mafRanges", base_command=["mafRanges"], inputs=[ToolInput(tag="in_other_db", input_type=String(optional=True), prefix="-otherDb", doc=InputDocumentation(doc="Output ranges only for alignments that include oDb.\noDB can be comma-separated list.")), ToolInput(tag="in_not_all_o_gap", input_type=Boolean(optional=True), prefix="-notAllOGap", doc=InputDocumentation(doc="Don't include bases for which all other species have a gap.")), ToolInput(tag="in_in_dot_maf", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_db", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_bed", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mafranges_V0_1_0().translate("wdl", allow_empty_container=True)

