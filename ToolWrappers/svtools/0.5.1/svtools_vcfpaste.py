from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Svtools_Vcfpaste_V0_1_0 = CommandToolBuilder(tool="svtools_vcfpaste", base_command=["svtools", "vcfpaste"], inputs=[ToolInput(tag="in_vcf_list", input_type=File(optional=True), prefix="--vcf-list", doc=InputDocumentation(doc="file containing a line-delimited list of VCF files to\npaste (required)")), ToolInput(tag="in_master", input_type=File(optional=True), prefix="--master", doc=InputDocumentation(doc="VCF file to set first 8 columns of variant info\n(otherwise first file in --vcf-list)")), ToolInput(tag="in_tempdir", input_type=File(optional=True), prefix="--tempdir", doc=InputDocumentation(doc="Directory for temp file downloads")), ToolInput(tag="in_sum_quals", input_type=Boolean(optional=True), prefix="--sum-quals", doc=InputDocumentation(doc="sum QUAL scores of input VCFs as output QUAL score"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtools_Vcfpaste_V0_1_0().translate("wdl", allow_empty_container=True)

