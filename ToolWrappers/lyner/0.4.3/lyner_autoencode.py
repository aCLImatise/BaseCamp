from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float

Lyner_Autoencode_V0_1_0 = CommandToolBuilder(tool="lyner_autoencode", base_command=["lyner", "autoencode"], inputs=[ToolInput(tag="in_validation_split", input_type=Int(optional=True), prefix="--validation-split", doc=InputDocumentation(doc="RANGE")), ToolInput(tag="in_adjust_weights", input_type=Float(optional=True), prefix="--adjust-weights", doc=InputDocumentation(doc="[discard|nodes|weights]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Autoencode_V0_1_0().translate("wdl", allow_empty_container=True)

