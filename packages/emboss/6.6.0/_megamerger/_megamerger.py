from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Megamerger_V0_1_0 = CommandToolBuilder(tool="_megamerger", base_command=["_megamerger"], inputs=[ToolInput(tag="in_word_size", input_type=Boolean(optional=True), prefix="-wordsize", doc=InputDocumentation(doc="integer    [20] Word size (Integer 2 or more)")), ToolInput(tag="in_prefer", input_type=Boolean(optional=True), prefix="-prefer", doc=InputDocumentation(doc="boolean    [N] When a mismatch between the two sequence\nis discovered, one or other of the two\nsequences must be used to create the merged\nsequence over this mismatch region. The\ndefault action is to create the merged\nsequence using the sequence where the\nmismatch is closest to that sequence's\ncentre. If this option is used, then the\nfirst sequence (seqa) will always be used in\npreference to the other sequence when there\nis a mismatch."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Megamerger_V0_1_0().translate("wdl", allow_empty_container=True)

