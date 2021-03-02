from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Getpub_V0_1_0 = CommandToolBuilder(tool="getpub", base_command=["getpub"], inputs=[ToolInput(tag="in_input_binary_data", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input binary data [Data In]\ndefault = medline.val\nData Type = Pub-set")), ToolInput(tag="in_medline_uid_find", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Medline UID to find [Integer]\ndefault = 88055872")), ToolInput(tag="in_input_index_table", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Input index table [File In]\ndefault = medline.idx")), ToolInput(tag="in_output_data_default", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Output data [Data Out]\ndefault = stdout\nData Type = Medline-entry")), ToolInput(tag="in_output_data_binary", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Output data is binary [T/F]\ndefault = F\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getpub_V0_1_0().translate("wdl", allow_empty_container=True)

