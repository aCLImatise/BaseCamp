from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Seqtk_Mergefa_V0_1_0 = CommandToolBuilder(tool="seqtk_mergefa", base_command=["seqtk", "mergefa"], inputs=[ToolInput(tag="in_quality_threshold", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="quality threshold [0]")), ToolInput(tag="in_take_intersection", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="take intersection")), ToolInput(tag="in_convert_lowercase_is", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="convert to lowercase when one of the input base is N")), ToolInput(tag="in_pick_random_allele", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="pick a random allele from het")), ToolInput(tag="in_in_one_dot_fa", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_two_dot_fa", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqtk_Mergefa_V0_1_0().translate("wdl", allow_empty_container=True)

