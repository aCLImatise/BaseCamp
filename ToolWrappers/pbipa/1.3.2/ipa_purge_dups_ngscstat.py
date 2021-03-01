from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ipa_Purge_Dups_Ngscstat_V0_1_0 = CommandToolBuilder(tool="ipa_purge_dups_ngscstat", base_command=["ipa_purge_dups_ngscstat"], inputs=[ToolInput(tag="in_int_minimum_alignment", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="INT      minimum alignment quality [30]")), ToolInput(tag="in_int_maximum_read", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="INT      maximum read depth [500]")), ToolInput(tag="in_int_maximum_insert", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="INT      maximum insert size [1000]")), ToolInput(tag="in_ngs_cst_at", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_files", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pbipa:1.3.2--hee625c5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ipa_Purge_Dups_Ngscstat_V0_1_0().translate("wdl")

