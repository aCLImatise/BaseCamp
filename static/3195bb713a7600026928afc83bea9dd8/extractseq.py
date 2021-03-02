from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Extractseq_V0_1_0 = CommandToolBuilder(tool="extractseq", base_command=["extractseq"], inputs=[ToolInput(tag="in_regions", input_type=Boolean(optional=True), prefix="-regions", doc=InputDocumentation(doc="range      [Whole sequence] Regions to extract.\nA set of regions is specified by a set of\npairs of positions.\nThe positions are integers.\nThey are separated by any non-digit,\nnon-alpha character.\nExamples of region specifications are:\n24-45, 56-78\n1:45, 67=99;765..888\n1,5,8,10,23,45,57,99")), ToolInput(tag="in_separate", input_type=Boolean(optional=True), prefix="-separate", doc=InputDocumentation(doc="boolean    [N] If this is set true then each specified\nregion is written out as a separate\nsequence. The name of the sequence is\ncreated from the name of the original\nsequence with the start and end positions of\nthe range appended with underscore\ncharacters between them, eg: XYZ region 2 to\n34 is written as: XYZ_2_34"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extractseq_V0_1_0().translate("wdl", allow_empty_container=True)

