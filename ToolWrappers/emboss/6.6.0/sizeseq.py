from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Sizeseq_V0_1_0 = CommandToolBuilder(tool="sizeseq", base_command=["sizeseq"], inputs=[ToolInput(tag="in_descending", input_type=Boolean(optional=True), prefix="-descending", doc=InputDocumentation(doc="boolean    [N] By default the shortest sequence is\ngiven first.")), ToolInput(tag="in_feature", input_type=Boolean(optional=True), prefix="-feature", doc=InputDocumentation(doc="boolean    Sequence feature information will be\nretained if this option is set."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sizeseq_V0_1_0().translate("wdl", allow_empty_container=True)

