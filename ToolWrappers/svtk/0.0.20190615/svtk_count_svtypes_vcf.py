from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Svtk_Count_Svtypes_Vcf_V0_1_0 = CommandToolBuilder(tool="svtk_count_svtypes_vcf", base_command=["svtk", "count-svtypes", "vcf"], inputs=[ToolInput(tag="in_total_variants", input_type=Boolean(optional=True), prefix="--total-variants", doc=InputDocumentation(doc="")), ToolInput(tag="in_total_obs", input_type=Boolean(optional=True), prefix="--total-obs", doc=InputDocumentation(doc="")), ToolInput(tag="in_no_header", input_type=Boolean(optional=True), prefix="--no-header", doc=InputDocumentation(doc="")), ToolInput(tag="in_s_vtk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_count_sv_types", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtk_Count_Svtypes_Vcf_V0_1_0().translate("wdl", allow_empty_container=True)

