from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gff2Tdf_Pl_V0_1_0 = CommandToolBuilder(tool="gff2tdf.pl", base_command=["gff2tdf.pl"], inputs=[ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="input format to use (gff or bedgraph)\n[Current value: gff]")), ToolInput(tag="in_genome", input_type=Boolean(optional=True), prefix="--genome", doc=InputDocumentation(doc="IGVTools genome file to use\n[Current value: dmel_r5.33]")), ToolInput(tag="in_igv_path", input_type=Boolean(optional=True), prefix="--igvpath", doc=InputDocumentation(doc="path to IGVtools\n(leave blank if igvtools and igvtools.jar are in your path)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff2Tdf_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

