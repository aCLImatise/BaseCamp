from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Vcfsort_V0_1_0 = CommandToolBuilder(tool="vcfsort", base_command=["vcfsort"], inputs=[ToolInput(tag="in_invalid_option_", input_type=Boolean(optional=True), prefix="-1000", doc=InputDocumentation(doc=": invalid option -- '-'")), ToolInput(tag="in_print_first_n", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[-]N[kbm]    Print first N bytes")), ToolInput(tag="in_never_print_headers", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Never print headers")), ToolInput(tag="in_always_print_headers", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Always print headers")), ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_head", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfsort_V0_1_0().translate("wdl")

