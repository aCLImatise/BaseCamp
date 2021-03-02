from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Remove_Region_V0_1_0 = CommandToolBuilder(tool="remove_region", base_command=["remove_region"], inputs=[ToolInput(tag="in_region_file", input_type=File(optional=True), prefix="--region-file", doc=InputDocumentation(doc="A bed file specifying regions which should be excluded\nfrom the gVCF. Any records contained in the excluded\nregion will be removed, and any boundary non-refernece\nblocks will be altered to remove segments overlapping\nthe excluded region (required)")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="samtools reference sequence (required)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Region_V0_1_0().translate("wdl", allow_empty_container=True)

