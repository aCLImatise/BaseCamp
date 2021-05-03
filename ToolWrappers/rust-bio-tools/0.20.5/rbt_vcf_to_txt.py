from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rbt_Vcf_To_Txt_V0_1_0 = CommandToolBuilder(tool="rbt_vcf_to_txt", base_command=["rbt", "vcf-to-txt"], inputs=[ToolInput(tag="in_genotypes", input_type=Boolean(optional=True), prefix="--genotypes", doc=InputDocumentation(doc="Display genotypes")), ToolInput(tag="in_fmt", input_type=String(optional=True), prefix="--fmt", doc=InputDocumentation(doc="...\nSelect FORMAT tags")), ToolInput(tag="in_info", input_type=String(optional=True), prefix="--info", doc=InputDocumentation(doc="...\nSelect INFO tags\n"))], outputs=[], container="quay.io/biocontainers/rust-bio-tools:0.20.5--h4af157f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbt_Vcf_To_Txt_V0_1_0().translate("wdl")

