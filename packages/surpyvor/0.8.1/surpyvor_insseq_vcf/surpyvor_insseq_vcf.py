from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Surpyvor_Insseq_Vcf_V0_1_0 = CommandToolBuilder(tool="surpyvor_insseq_vcf", base_command=["surpyvor", "insseq", "vcf"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="")), ToolInput(tag="in_sur_py_vor", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ins_seq", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Surpyvor_Insseq_Vcf_V0_1_0().translate("wdl", allow_empty_container=True)

