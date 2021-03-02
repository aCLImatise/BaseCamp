from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Liftup_V0_1_0 = CommandToolBuilder(tool="liftUp", base_command=["liftUp"], inputs=[ToolInput(tag="in_no_head", input_type=Boolean(optional=True), prefix="-nohead", doc=InputDocumentation(doc="No header written for .psl files")), ToolInput(tag="in_dots", input_type=String(optional=True), prefix="-dots", doc=InputDocumentation(doc="Output a dot every N lines processed")), ToolInput(tag="in_psl_q", input_type=Boolean(optional=True), prefix="-pslQ", doc=InputDocumentation(doc="Lift query (rather than target) side of psl")), ToolInput(tag="in_axt_q", input_type=Boolean(optional=True), prefix="-axtQ", doc=InputDocumentation(doc="Lift query (rather than target) side of axt")), ToolInput(tag="in_chain_q", input_type=Boolean(optional=True), prefix="-chainQ", doc=InputDocumentation(doc="Lift query (rather than target) side of chain")), ToolInput(tag="in_net_q", input_type=Boolean(optional=True), prefix="-netQ", doc=InputDocumentation(doc="Lift query (rather than target) side of net")), ToolInput(tag="in_waba_q", input_type=Boolean(optional=True), prefix="-wabaQ", doc=InputDocumentation(doc="Lift query (rather than target) side of waba alignment\n(waba lifts only work with query side at this time)")), ToolInput(tag="in_no_sort", input_type=String(optional=True), prefix="-nosort", doc=InputDocumentation(doc="'t sort bed, gff, or gdup files, to save memory")), ToolInput(tag="in_gap_size", input_type=String(optional=True), prefix="-gapsize", doc=InputDocumentation(doc="contig gapsize from default")), ToolInput(tag="in_ignore_versions", input_type=Boolean(optional=True), prefix="-ignoreVersions", doc=InputDocumentation(doc="- Ignore NCBI-style version number in sequence ids of input files")), ToolInput(tag="in_ext_gene_pred", input_type=String(optional=True), prefix="-extGenePred", doc=InputDocumentation(doc="extended genePred")), ToolInput(tag="in_drop", input_type=String(), position=0, doc=InputDocumentation(doc="- Items not in liftSpec are silently dropped from dest")), ToolInput(tag="in_warn", input_type=String(), position=1, doc=InputDocumentation(doc="- Items not in liftSpec are dropped.  A warning is issued"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Liftup_V0_1_0().translate("wdl", allow_empty_container=True)

