from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Parsecasm_V0_1_0 = CommandToolBuilder(tool="parsecasm", base_command=["parsecasm"], inputs=[ToolInput(tag="in_no_fast_a", input_type=Boolean(optional=True), prefix="-nofasta", doc=InputDocumentation(doc="Do not create .fasta output")), ToolInput(tag="in_just_fast_a", input_type=Boolean(optional=True), prefix="-justfasta", doc=InputDocumentation(doc="Only create .fasta output")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output prefix")), ToolInput(tag="in_no_names", input_type=Boolean(optional=True), prefix="-nonames", doc=InputDocumentation(doc="Uses Ids rather than trying to figure out seqnames"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsecasm_V0_1_0().translate("wdl", allow_empty_container=True)

