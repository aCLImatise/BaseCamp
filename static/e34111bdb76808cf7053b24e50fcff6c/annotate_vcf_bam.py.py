from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String

Annotate_Vcf_Bam_Py_V0_1_0 = CommandToolBuilder(tool="annotate_vcf_bam.py", base_command=["annotate_vcf_bam.py"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="BAM file (default: None)")), ToolInput(tag="in_chromosomes", input_type=Array(t=String(), optional=True), prefix="--chromosomes", doc=InputDocumentation(doc="Chromosomes (default: [])")), ToolInput(tag="in_v_cfs", input_type=Array(t=String(), optional=True), prefix="--vcfs", doc=InputDocumentation(doc="Input VCF files (default: None)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annotate_Vcf_Bam_Py_V0_1_0().translate("wdl", allow_empty_container=True)

