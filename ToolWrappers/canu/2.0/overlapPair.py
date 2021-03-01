from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Overlappair_V0_1_0 = CommandToolBuilder(tool="overlapPair", base_command=["overlapPair"], inputs=[ToolInput(tag="in_mandatory_path_seqstore", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="Mandatory, path to seqStore")), ToolInput(tag="in_erate", input_type=String(optional=True), prefix="-erate", doc=InputDocumentation(doc="Overlaps are computed at 'e' fraction error; must be larger than the original erate")), ToolInput(tag="in_partial", input_type=Boolean(optional=True), prefix="-partial", doc=InputDocumentation(doc="Overlaps are 'overlapInCore -S' partial overlaps")), ToolInput(tag="in_memory", input_type=String(optional=True), prefix="-memory", doc=InputDocumentation(doc="Use up to 'm' GB of memory")), ToolInput(tag="in_use_up_cores", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Use up to 'n' cores")), ToolInput(tag="in_invert", input_type=Boolean(optional=True), prefix="-invert", doc=InputDocumentation(doc="Invert the overlap A <-> B before aligning (they are not re-inverted before output)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Overlappair_V0_1_0().translate("wdl", allow_empty_container=True)

