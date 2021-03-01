from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Cvgstat_V0_1_0 = CommandToolBuilder(tool="cvgStat", base_command=["cvgStat"], inputs=[ToolInput(tag="in_name_bank_used", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="- name of bank to be used")), ToolInput(tag="in_lay", input_type=Boolean(optional=True), prefix="-lay", doc=InputDocumentation(doc="- computes coverage of layout messages")), ToolInput(tag="in_ctg", input_type=Boolean(optional=True), prefix="-ctg", doc=InputDocumentation(doc="- computes coverage of contig messages (default)")), ToolInput(tag="in_sc_aff", input_type=Boolean(optional=True), prefix="-scaff", doc=InputDocumentation(doc="- computes coverage of scaffolds")), ToolInput(tag="in_red", input_type=Boolean(optional=True), prefix="-red", doc=InputDocumentation(doc="- computes read coverage (default)")), ToolInput(tag="in_frg", input_type=Boolean(optional=True), prefix="-frg", doc=InputDocumentation(doc="- computes fragment/clone coverage")), ToolInput(tag="in_rdf_rg", input_type=Boolean(optional=True), prefix="-rdfrg", doc=InputDocumentation(doc="- computes difference between fragment and read coverages")), ToolInput(tag="in_iid", input_type=Boolean(optional=True), prefix="-iid", doc=InputDocumentation(doc="- headers are iids")), ToolInput(tag="in_eid", input_type=Boolean(optional=True), prefix="-eid", doc=InputDocumentation(doc="- headers are eids"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cvgstat_V0_1_0().translate("wdl", allow_empty_container=True)

