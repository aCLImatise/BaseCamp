from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Getconservedregions_Pl_V0_1_0 = CommandToolBuilder(tool="getConservedRegions.pl", base_command=["getConservedRegions.pl"], inputs=[ToolInput(tag="in_size", input_type=Boolean(optional=True), prefix="-size", doc=InputDocumentation(doc="<#|given> (size of region centered on peaks to look for conserved islands)\ndefault: given")), ToolInput(tag="in_bufsize", input_type=Boolean(optional=True), prefix="-bufSize", doc=InputDocumentation(doc="<#> (size of area around conserved islands to include)\ndefault: 25")), ToolInput(tag="in_out_size", input_type=Boolean(optional=True), prefix="-outSize", doc=InputDocumentation(doc="<#> (size of conserved island segments to output [larger islands will be split])\ndefault: 100")), ToolInput(tag="in_cons", input_type=Int(optional=True), prefix="-cons", doc=InputDocumentation(doc="(phastCons score needed to define conservation island, 0=all used)\ndefault: 0.8")), ToolInput(tag="in_peak_regions_exclude", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="[peakfile2]... (peak regions to exclude)")), ToolInput(tag="in_keep_exons", input_type=Boolean(optional=True), prefix="-keepExons", doc=InputDocumentation(doc="(By default, exons are excluded)")), ToolInput(tag="in_peak_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_version", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_additional", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_options_dot_dot_dot", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getconservedregions_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

