from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Svtk_Rdtest2Vcf_Samples_V0_1_0 = CommandToolBuilder(tool="svtk_rdtest2vcf_samples", base_command=["svtk", "rdtest2vcf", "samples"], inputs=[ToolInput(tag="in_contigs", input_type=String(optional=True), prefix="--contigs", doc=InputDocumentation(doc="")), ToolInput(tag="in_s_vtk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_rd_test_two_vcf", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_samples", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_f_out", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtk_Rdtest2Vcf_Samples_V0_1_0().translate("wdl", allow_empty_container=True)

