from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Float, Boolean

Chainnet_V0_1_0 = CommandToolBuilder(tool="chainNet", base_command=["chainNet"], inputs=[ToolInput(tag="in_min_space", input_type=Int(optional=True), prefix="-minSpace", doc=InputDocumentation(doc="- minimum gap size to fill, default 25")), ToolInput(tag="in_min_fill", input_type=String(optional=True), prefix="-minFill", doc=InputDocumentation(doc="- default half of minSpace")), ToolInput(tag="in_min_score", input_type=Float(optional=True), prefix="-minScore", doc=InputDocumentation(doc="- minimum chain score to consider, default 2000.0")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="-verbose", doc=InputDocumentation(doc="- Alter verbosity (default 1)")), ToolInput(tag="in_incl_hap", input_type=Boolean(optional=True), prefix="-inclHap", doc=InputDocumentation(doc="- include query sequences name in the form *_hap*|*_alt*.\nNormally these are excluded from nets as being haplotype\npseudochromosomes\n")), ToolInput(tag="in_in_dot_chain", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_target_dot_sizes", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_query_dot_sizes", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_target_dotnet", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chainnet_V0_1_0().translate("wdl", allow_empty_container=True)

