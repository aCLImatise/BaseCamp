from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Ndisasm_V0_1_0 = CommandToolBuilder(tool="ndisasm", base_command=["ndisasm"], inputs=[ToolInput(tag="in_auto_intelligent_sync", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="auto (intelligent) sync")), ToolInput(tag="in_as_b", input_type=Int(optional=True), prefix="-u", doc=InputDocumentation(doc="as -b 32")), ToolInput(tag="in_sets_processor_mode", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="or -b 64 sets the processor mode")), ToolInput(tag="in_this_text", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="this text")), ToolInput(tag="in_the_version_number", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="the version number")), ToolInput(tag="in_bytes_bytes_header", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="<bytes> bytes of header")), ToolInput(tag="in_disassembling_bytes_bytes", input_type=String(optional=True), prefix="-k", doc=InputDocumentation(doc="disassembling <bytes> bytes from position <start>")), ToolInput(tag="in_preferred_vendor_instruction", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="the preferred vendor instruction set (intel, amd, cyrix, idt)")), ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ndisasm_V0_1_0().translate("wdl", allow_empty_container=True)

