from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Vcf_Paste_Py_V0_1_0 = CommandToolBuilder(tool="vcf_paste.py", base_command=["vcf_paste.py"], inputs=[ToolInput(tag="in_master", input_type=File(optional=True), prefix="--master", doc=InputDocumentation(doc="VCF file to set first 8 columns of variant info [first file in vcf_list]")), ToolInput(tag="in_sum_quals", input_type=Boolean(optional=True), prefix="--sum_quals", doc=InputDocumentation(doc="Sum QUAL scores of input VCFs as output QUAL score")), ToolInput(tag="in_vcf_list", input_type=String(optional=True), prefix="--vcf_list", doc=InputDocumentation(doc="Line-delimited list of VCF files to paste\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf_Paste_Py_V0_1_0().translate("wdl", allow_empty_container=True)

