from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Shasum_V0_1_0 = CommandToolBuilder(tool="shasum", base_command=["shasum"], inputs=[ToolInput(tag="in_binary", input_type=Boolean(optional=True), prefix="--binary", doc=InputDocumentation(doc="read in binary mode")), ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="--check", doc=InputDocumentation(doc="read SHA sums from the FILEs and check them")), ToolInput(tag="in_text", input_type=Boolean(optional=True), prefix="--text", doc=InputDocumentation(doc="read in text mode (default)")), ToolInput(tag="in_universal", input_type=Boolean(optional=True), prefix="--UNIVERSAL", doc=InputDocumentation(doc="read in Universal Newlines mode\nproduces same digest on Windows/Unix/Mac")), ToolInput(tag="in_read_bits_modeascii", input_type=Boolean(optional=True), prefix="--01", doc=InputDocumentation(doc="read in BITS mode\nASCII '0' interpreted as 0-bit,\nASCII '1' interpreted as 1-bit,\nall other characters ignored")), ToolInput(tag="in_portable", input_type=Boolean(optional=True), prefix="--portable", doc=InputDocumentation(doc="read in portable mode (to be deprecated)")), ToolInput(tag="in_status", input_type=Boolean(optional=True), prefix="--status", doc=InputDocumentation(doc="don't output anything, status code shows success")), ToolInput(tag="in_warn", input_type=Boolean(optional=True), prefix="--warn", doc=InputDocumentation(doc="warn about improperly formatted checksum lines"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shasum_V0_1_0().translate("wdl", allow_empty_container=True)

