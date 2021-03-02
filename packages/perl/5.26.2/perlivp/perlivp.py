from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Perlivp_V0_1_0 = CommandToolBuilder(tool="perlivp", base_command=["perlivp"], inputs=[ToolInput(tag="in_preface_test_telling", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="a preface before each test telling what it will test.")), ToolInput(tag="in_mode_information_print", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="mode in which extra information about test results\nis printed.  Test failures always print out some extra information\nregardless of whether or not this switch is set.")), ToolInput(tag="in_this_help_message", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="this help message."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Perlivp_V0_1_0().translate("wdl", allow_empty_container=True)

