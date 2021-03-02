from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bank2Lib_V0_1_0 = CommandToolBuilder(tool="bank2lib", base_command=["bank2lib"], inputs=[ToolInput(tag="in_bank", input_type=String(optional=True), prefix="-bank", doc=InputDocumentation(doc="bank where assembly is stored")), ToolInput(tag="in_eid", input_type=Boolean(optional=True), prefix="-eid", doc=InputDocumentation(doc="report eids")), ToolInput(tag="in_iid", input_type=Boolean(optional=True), prefix="-iid", doc=InputDocumentation(doc="report iids (default)")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="output prefix"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bank2Lib_V0_1_0().translate("wdl", allow_empty_container=True)

