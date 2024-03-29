from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Maskseq_V0_1_0 = CommandToolBuilder(tool="maskseq", base_command=["maskseq"], inputs=[ToolInput(tag="in_regions", input_type=Boolean(optional=True), prefix="-regions", doc=InputDocumentation(doc="range      [None] Regions to mask.\nA set of regions is specified by a set of\npairs of positions.\nThe positions are integers.\nThey are separated by any non-digit,\nnon-alpha character.\nExamples of region specifications are:\n24-45, 56-78\n1:45, 67=99;765..888\n1,5,8,10,23,45,57,99")), ToolInput(tag="in_to_lower", input_type=Boolean(optional=True), prefix="-tolower", doc=InputDocumentation(doc="toggle     [N] The region can be 'masked' by converting\nthe sequence characters to lower-case, some\nnon-EMBOSS programs e.g. fasta can\ninterpret this as a masked region. The\nsequence is unchanged apart from the case\nchange. You might like to ensure that the\nwhole sequence is in upper-case before\nmasking the specified regions to lower-case\nby using the '-supper' flag."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maskseq_V0_1_0().translate("wdl", allow_empty_container=True)

