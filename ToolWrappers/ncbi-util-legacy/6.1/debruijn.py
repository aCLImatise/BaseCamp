from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Debruijn_V0_1_0 = CommandToolBuilder(tool="debruijn", base_command=["debruijn"], inputs=[ToolInput(tag="in_word_size", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="word size [Integer]")), ToolInput(tag="in_alphabet", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="alphabet"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Debruijn_V0_1_0().translate("wdl", allow_empty_container=True)

