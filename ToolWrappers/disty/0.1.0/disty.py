from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Disty_V0_1_0 = CommandToolBuilder(tool="disty", base_command=["disty"], inputs=[ToolInput(tag="in_float_skip_columns", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="FLOAT  skip columns having frequency of N > FLOAT [1.00]")), ToolInput(tag="in_int_input_format", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="INT    input format [0]\n0: ACGT\n1: 01")), ToolInput(tag="in_int_strategy_deal", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="INT    strategy to deal with N's [0]\n0: ignore pairwisely\n1: ignore pairwisely and normalize\n2: ignore globally\n3: replace by the major allele\n4: replace by the closest individual (not implemented yet)")), ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="print version and exit")), ToolInput(tag="in_alignment_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Disty_V0_1_0().translate("wdl", allow_empty_container=True)

