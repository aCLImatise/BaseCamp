from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rowstocols_V0_1_0 = CommandToolBuilder(tool="rowsToCols", base_command=["rowsToCols"], inputs=[ToolInput(tag="in_var_col", input_type=Boolean(optional=True), prefix="-varCol", doc=InputDocumentation(doc="- rows may to have various numbers of columns.")), ToolInput(tag="in_tab", input_type=Boolean(optional=True), prefix="-tab", doc=InputDocumentation(doc="- fields are separated by tab")), ToolInput(tag="in_fs", input_type=String(optional=True), prefix="-fs", doc=InputDocumentation(doc="- fields are separated by given character")), ToolInput(tag="in_fixed", input_type=Boolean(optional=True), prefix="-fixed", doc=InputDocumentation(doc="- fields are of fixed width with space padding")), ToolInput(tag="in_offsets", input_type=String(optional=True), prefix="-offsets", doc=InputDocumentation(doc=",Y,Z - fields are of fixed width at given offsets")), ToolInput(tag="in_in_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rowstocols_V0_1_0().translate("wdl", allow_empty_container=True)

