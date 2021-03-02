from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Listor_V0_1_0 = CommandToolBuilder(tool="listor", base_command=["listor"], inputs=[ToolInput(tag="in_operator", input_type=Boolean(optional=True), prefix="-operator", doc=InputDocumentation(doc="menu       [OR] The following logical operators combine\nthe sequences in the following ways:\nOR - gives all that occur in one set or the\nother\nAND - gives only those which occur in both\nsets\nXOR - gives those which only occur in one\nset or the other, but not in both\nNOT - gives those which occur in the first\nset except for those that also occur in the\nsecond (Values: OR (OR - merger of both\nsets); AND (AND - only those in both sets);\nXOR (XOR - only those not in both sets); NOT\n(NOT - those of the first set that are not\nin the second))"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Listor_V0_1_0().translate("wdl", allow_empty_container=True)

