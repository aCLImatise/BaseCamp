from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Faketime_V0_1_0 = CommandToolBuilder(tool="faketime", base_command=["faketime"], inputs=[ToolInput(tag="in_use_multithreaded_version", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": Use the multi-threaded version of libfaketime")), ToolInput(tag="in_use_advanced_format", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": Use the advanced timestamp specification format (see manpage)")), ToolInput(tag="in_exclude_monotonic", input_type=Boolean(optional=True), prefix="--exclude-monotonic", doc=InputDocumentation(doc=": Prevent monotonic clock from drifting (not the raw monotonic one)")), ToolInput(tag="in_switches", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_timestamp", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_program_with_arguments", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/tbl2asn-forever:25.7.2f--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Faketime_V0_1_0().translate("wdl")

