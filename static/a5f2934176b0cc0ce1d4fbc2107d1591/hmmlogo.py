from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hmmlogo_V0_1_0 = CommandToolBuilder(tool="hmmlogo", base_command=["hmmlogo"], inputs=[ToolInput(tag="in_height_relent_all", input_type=Boolean(optional=True), prefix="--height_relent_all", doc=InputDocumentation(doc=": total height = relative entropy ; all letters shown (default)")), ToolInput(tag="in_height_relent_above_bg", input_type=Boolean(optional=True), prefix="--height_relent_abovebg", doc=InputDocumentation(doc=": total height = relative entropy ; only letters >bg shown")), ToolInput(tag="in_height_score", input_type=Boolean(optional=True), prefix="--height_score", doc=InputDocumentation(doc=": total height = sums of (pos|neg) scores; residue height = score")), ToolInput(tag="in_no_in_del", input_type=Boolean(optional=True), prefix="--no_indel", doc=InputDocumentation(doc=": don't provide indel rate values")), ToolInput(tag="in_hmm_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmlogo_V0_1_0().translate("wdl", allow_empty_container=True)

