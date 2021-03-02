from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fastahack_V0_1_0 = CommandToolBuilder(tool="fastahack", base_command=["fastahack"], inputs=[ToolInput(tag="in_index", input_type=Boolean(optional=True), prefix="--index", doc=InputDocumentation(doc="generate fasta index <fasta reference>.fai")), ToolInput(tag="in_region", input_type=String(optional=True), prefix="--region", doc=InputDocumentation(doc="print the specified region")), ToolInput(tag="in_stdin", input_type=Boolean(optional=True), prefix="--stdin", doc=InputDocumentation(doc="read a stream of line-delimited region specifiers on stdin\nand print the corresponding sequence for each on stdout")), ToolInput(tag="in_entropy", input_type=Boolean(optional=True), prefix="--entropy", doc=InputDocumentation(doc="print the shannon entropy of the specified region")), ToolInput(tag="in_dump", input_type=Boolean(optional=True), prefix="--dump", doc=InputDocumentation(doc="print the fasta file in the form 'seq_name <tab> sequence'")), ToolInput(tag="in_fast_a_reference", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastahack_V0_1_0().translate("wdl", allow_empty_container=True)

