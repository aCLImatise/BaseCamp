from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Pslpartition_V0_1_0 = CommandToolBuilder(tool="pslPartition", base_command=["pslPartition"], inputs=[ToolInput(tag="in_out_levels", input_type=Int(optional=True), prefix="-outLevels", doc=InputDocumentation(doc="- number of output subdirectory levels.  0 puts all files\ndirectly in outDir, 2, will create files in the form outDir/0/0/00.psl")), ToolInput(tag="in_part_size", input_type=Int(optional=True), prefix="-partSize", doc=InputDocumentation(doc="- will combine non-overlapping partitions, while attempting\nto keep them under this number of PSLs.  This reduces the number of\nfiles that are created while ensuring that there are no overlaps\nbetween any two PSL files.  A value of 0 creates a PSL file per set of\noverlapping PSLs.")), ToolInput(tag="in_drop_contained", input_type=Boolean(optional=True), prefix="-dropContained", doc=InputDocumentation(doc="- drop PSLs that are completely contained in a block of\nanother PSL.\n")), ToolInput(tag="in_psl_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pslpartition_V0_1_0().translate("wdl", allow_empty_container=True)

