from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Mafsplitpos_V0_1_0 = CommandToolBuilder(tool="mafSplitPos", base_command=["mafSplitPos"], inputs=[ToolInput(tag="in_chrom", input_type=String(optional=True), prefix="-chrom", doc=InputDocumentation(doc="Restrict to one chromosome")), ToolInput(tag="in_min_gap", input_type=Int(optional=True), prefix="-minGap", doc=InputDocumentation(doc="Split only on gaps >N bp, defaults to 100, specify -1 to disable")), ToolInput(tag="in_min_repeat", input_type=Int(optional=True), prefix="-minRepeat", doc=InputDocumentation(doc="Split only on repeats >N bp, defaults to 100, specify -1 to disable")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_size", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mafsplitpos_V0_1_0().translate("wdl", allow_empty_container=True)

