from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Grow_Readbank_V0_1_0 = CommandToolBuilder(tool="grow_readbank", base_command=["grow-readbank"], inputs=[ToolInput(tag="in_create_new_bank", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Create a new read bank")), ToolInput(tag="in_input_celera_msg", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="Input is Celera msg format, i.e., a .frg file")), ToolInput(tag="in_force_new_read", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Force new read bank by deleting existing one first")), ToolInput(tag="in_compress_reads_allows", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Compress reads in the Bank, only allows chars ACGTN")), ToolInput(tag="in_grow_read_bank", input_type=String(), position=0, doc=InputDocumentation(doc="<bank-name> <input-file[s]>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Grow_Readbank_V0_1_0().translate("wdl", allow_empty_container=True)

