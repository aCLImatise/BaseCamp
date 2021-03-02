from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Correctoverlaps_V0_1_0 = CommandToolBuilder(tool="correctOverlaps", base_command=["correctOverlaps"], inputs=[ToolInput(tag="in_seqstore_path_sequence", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="seqStore           path to a sequence store")), ToolInput(tag="in_ovlstore_path_overlap", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="ovlStore           path to an overlap store")), ToolInput(tag="in_bgn_end_only", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="bgn end            only compute for reads bgn-end")), ToolInput(tag="in_inputname_read_corrections", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="input-name         read corrections from 'input-name'")), ToolInput(tag="in_outputname_write_rates", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="output-name        write updated error rates to 'output-name'")), ToolInput(tag="in_numthreads_used_thread", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="num-threads        not used; only one thread used")), ToolInput(tag="in_minlen_ignore_overlaps", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="min-len            ignore overlaps shorter than this")), ToolInput(tag="in_maxerate_s_ignore", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="max-erate s        ignore overlaps higher than this error")), ToolInput(tag="in_check_trival_dna", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="check trival dna   ignore alignment errors in simple sequence")), ToolInput(tag="in_seq_store", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_store", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Correctoverlaps_V0_1_0().translate("wdl", allow_empty_container=True)

