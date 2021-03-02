from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Removeredundantpeaks_Pl_V0_1_0 = CommandToolBuilder(tool="removeRedundantPeaks.pl", base_command=["removeRedundantPeaks.pl"], inputs=[ToolInput(tag="in_palindromic", input_type=Boolean(optional=True), prefix="-palindromic", doc=InputDocumentation(doc="(will remove peaks that overlap >50% and are on separate strands,\nthat are likely representative of palindromic motif recognition)")), ToolInput(tag="in_blat", input_type=Boolean(optional=True), prefix="-blat", doc=InputDocumentation(doc="<#> (Where % is the percentage match to be considered redundant, default=0.33)")), ToolInput(tag="in_size", input_type=Boolean(optional=True), prefix="-size", doc=InputDocumentation(doc="<#> (size of peaks to be used for sequence similarity, default=given)")), ToolInput(tag="in_genome", input_type=Directory(optional=True), prefix="-genome", doc=InputDocumentation(doc="(genome for extracting sequence)")), ToolInput(tag="in_mask", input_type=Boolean(optional=True), prefix="-mask", doc=InputDocumentation(doc="(use repeat masked sequence)")), ToolInput(tag="in_peak_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Removeredundantpeaks_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

