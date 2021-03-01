from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bioformats_Snpeff2Bed_V0_1_0 = CommandToolBuilder(tool="bioformats_snpeff2bed", base_command=["bioformats", "snpeff2bed"], inputs=[ToolInput(tag="in_bed_three", input_type=Boolean(optional=True), prefix="--bed3", doc=InputDocumentation(doc="convert to the BED3 format")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_file", input_type=String(), position=0, doc=InputDocumentation(doc="an snpEff-annotated VCF file")), ToolInput(tag="in_bed_file", input_type=String(), position=1, doc=InputDocumentation(doc="the output BED file of annotated variants"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioformats_Snpeff2Bed_V0_1_0().translate("wdl", allow_empty_container=True)

