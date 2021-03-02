from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Bedparse_Bed12Tobed6_Bedfile_V0_1_0 = CommandToolBuilder(tool="bedparse_bed12tobed6_bedfile", base_command=["bedparse", "bed12tobed6", "bedfile"], inputs=[ToolInput(tag="in_which_exon", input_type=String(optional=True), prefix="--whichExon", doc=InputDocumentation(doc="")), ToolInput(tag="in_append_exn", input_type=Boolean(optional=True), prefix="--appendExN", doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_parse", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_be_done_two_to_bed_six", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedparse_Bed12Tobed6_Bedfile_V0_1_0().translate("wdl", allow_empty_container=True)

