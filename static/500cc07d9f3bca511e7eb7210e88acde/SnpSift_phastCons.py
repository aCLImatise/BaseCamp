from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Snpsift_Phastcons_V0_1_0 = CommandToolBuilder(tool="SnpSift_phastCons", base_command=["SnpSift", "phastCons"], inputs=[ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="-bed", doc=InputDocumentation(doc=": Input is a BED file.")), ToolInput(tag="in_extract", input_type=Int(optional=True), prefix="-extract", doc=InputDocumentation(doc=": Extract sub intervals of at least 'num' bases, having a conservarion score of at least 'minScore'. Only when input is a BED file.")), ToolInput(tag="in_min_score", input_type=Int(optional=True), prefix="-minScore", doc=InputDocumentation(doc=": Only annotate is score is greater to 'num'. Default: 0.0")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc=": VCF or BED file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Phastcons_V0_1_0().translate("wdl", allow_empty_container=True)

