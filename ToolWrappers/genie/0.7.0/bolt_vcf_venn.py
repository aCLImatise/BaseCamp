from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Bolt_Vcf_Venn_V0_1_0 = CommandToolBuilder(tool="bolt_vcf_venn", base_command=["bolt", "vcf", "venn"], inputs=[ToolInput(tag="in_file_path", input_type=File(optional=True), prefix="--filepath", doc=InputDocumentation(doc="VCF files (*require at 3 files)")), ToolInput(tag="in_primary", input_type=File(optional=True), prefix="--primary", doc=InputDocumentation(doc="a primary VCF file (*require)")), ToolInput(tag="in_sv_type", input_type=String(optional=True), prefix="--svtype", doc=InputDocumentation(doc="SVTYPE such as DEL, DUP, INV, INS and BND (*require, support only one type)")), ToolInput(tag="in_genie", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_venn", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bolt_Vcf_Venn_V0_1_0().translate("wdl", allow_empty_container=True)

