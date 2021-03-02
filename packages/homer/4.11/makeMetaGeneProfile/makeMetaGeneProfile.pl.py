from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Makemetageneprofile_Pl_V0_1_0 = CommandToolBuilder(tool="makeMetaGeneProfile.pl", base_command=["makeMetaGeneProfile.pl"], inputs=[ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="-min", doc=InputDocumentation(doc="<#> (minimum size of genes/regions to use, default: 3000)\n(This prevents extremely small regions from being used)")), ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="-max", doc=InputDocumentation(doc="<#> (max size of genes/regions to use, default: no max)")), ToolInput(tag="in_gb_in", input_type=Boolean(optional=True), prefix="-gbin", doc=InputDocumentation(doc="<#> (Number of bins in gene body, default: 50)")), ToolInput(tag="in_g_ratio", input_type=Boolean(optional=True), prefix="-gRatio", doc=InputDocumentation(doc="<#> (Ratio of gene region to flanks, default: 2)")), ToolInput(tag="in_bin", input_type=Boolean(optional=True), prefix="-bin", doc=InputDocumentation(doc="<#> (Bin size for 5' and 3' flanks, default: 100)")), ToolInput(tag="in_size", input_type=Boolean(optional=True), prefix="-size", doc=InputDocumentation(doc="<#> (Size of 5' and 3' flanks, default: 5000)")), ToolInput(tag="in_peak_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makemetageneprofile_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

