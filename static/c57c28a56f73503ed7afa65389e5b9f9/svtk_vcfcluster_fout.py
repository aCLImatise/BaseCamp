from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Svtk_Vcfcluster_Fout_V0_1_0 = CommandToolBuilder(tool="svtk_vcfcluster_fout", base_command=["svtk", "vcfcluster", "fout"], inputs=[ToolInput(tag="in_x", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_s_vtk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_cluster", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtk_Vcfcluster_Fout_V0_1_0().translate("wdl", allow_empty_container=True)

