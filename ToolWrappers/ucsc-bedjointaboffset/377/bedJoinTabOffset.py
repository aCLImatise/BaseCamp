from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bedjointaboffset_V0_1_0 = CommandToolBuilder(tool="bedJoinTabOffset", base_command=["bedJoinTabOffset"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="show debug messages")), ToolInput(tag="in_tab_key_field", input_type=File(optional=True), prefix="--tabKeyField", doc=InputDocumentation(doc="the index of the key field in the tab file that\nmatches the key field in the bed file. default 0")), ToolInput(tag="in_bed_key_field", input_type=File(optional=True), prefix="--bedKeyField", doc=InputDocumentation(doc="the index of the key field in the bed file that\nmatches the key field in the tab file. default 3\n")), ToolInput(tag="in_in_tab_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_bed_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_bed_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedjointaboffset_V0_1_0().translate("wdl", allow_empty_container=True)

