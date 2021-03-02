from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mappedcoverage_V0_1_0 = CommandToolBuilder(tool="mappedCoverage", base_command=["mappedCoverage"], inputs=[ToolInput(tag="in_mask", input_type=Boolean(optional=True), prefix="-mask", doc=InputDocumentation(doc="Read sequences from in.fasta, lower-case mask\nany base with an alignment, write to out.fasta")), ToolInput(tag="in_cov", input_type=Boolean(optional=True), prefix="-cov", doc=InputDocumentation(doc="Write coverage statistics to 'dat' instead of stdout")), ToolInput(tag="in_raw", input_type=Boolean(optional=True), prefix="-raw", doc=InputDocumentation(doc="If present, assume the 'sim4db-results' are\na space-separated list of 'iid begin end', one per line")), ToolInput(tag="in_blast", input_type=Boolean(optional=True), prefix="-blast", doc=InputDocumentation(doc="Same idea as raw, expects 'UID.IID' for query id,\nblast format (-m) 9."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mappedcoverage_V0_1_0().translate("wdl", allow_empty_container=True)

