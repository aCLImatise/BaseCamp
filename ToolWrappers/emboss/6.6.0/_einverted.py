from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

_Einverted_V0_1_0 = CommandToolBuilder(tool="_einverted", base_command=["_einverted"], inputs=[ToolInput(tag="in_gap", input_type=Boolean(optional=True), prefix="-gap", doc=InputDocumentation(doc="integer    [12] Gap penalty (Integer 0 or more)")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="-threshold", doc=InputDocumentation(doc="integer    [50] Minimum score threshold (Integer 0 or\nmore)")), ToolInput(tag="in_match", input_type=Boolean(optional=True), prefix="-match", doc=InputDocumentation(doc="integer    [3] Match score (Integer 0 or more)")), ToolInput(tag="in_mismatch", input_type=Boolean(optional=True), prefix="-mismatch", doc=InputDocumentation(doc="integer    [-4] Mismatch score (Integer up to 0)")), ToolInput(tag="in_max_repeat", input_type=Boolean(optional=True), prefix="-maxrepeat", doc=InputDocumentation(doc="integer    [2000] Maximum separation between the start\nof repeat and the end of the inverted\nrepeat. (Integer 0 or more)")), ToolInput(tag="in_characters_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Einverted_V0_1_0().translate("wdl", allow_empty_container=True)

