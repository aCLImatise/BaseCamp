from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mafsinregion_V0_1_0 = CommandToolBuilder(tool="mafsInRegion", base_command=["mafsInRegion"], inputs=[ToolInput(tag="in_outdir", input_type=Boolean(optional=True), prefix="-outDir", doc=InputDocumentation(doc="- output separate files named by bed name field to outDir")), ToolInput(tag="in_keep_initial_gaps", input_type=Boolean(optional=True), prefix="-keepInitialGaps", doc=InputDocumentation(doc="- keep alignment columns at the beginning and of a block that are gapped in all species")), ToolInput(tag="in_regions_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_maf_vertical_line_outdir", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_maf", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mafsinregion_V0_1_0().translate("wdl", allow_empty_container=True)

