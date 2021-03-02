from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Exonerate2Hints_Pl_V0_1_0 = CommandToolBuilder(tool="exonerate2hints.pl", base_command=["exonerate2hints.pl"], inputs=[ToolInput(tag="in_priority", input_type=Int(optional=True), prefix="--priority", doc=InputDocumentation(doc="priority of hint group (default 4)")), ToolInput(tag="in_min_intron_len", input_type=Int(optional=True), prefix="--minintronlen", doc=InputDocumentation(doc="alignments with gaps shorter than this and longer than maxgaplen are discarded (default 41)")), ToolInput(tag="in_max_intron_len", input_type=Int(optional=True), prefix="--maxintronlen", doc=InputDocumentation(doc="alignments with longer gaps are discarded (default 350000")), ToolInput(tag="in_cds_part_cut_off", input_type=Int(optional=True), prefix="--CDSpart_cutoff", doc=InputDocumentation(doc="this many bp are cut off of each CDSpart hint w.r.t. the exonerate cds (default 9)")), ToolInput(tag="in_source", input_type=String(optional=True), prefix="--source", doc=InputDocumentation(doc="source identifier (default 'P')"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Exonerate2Hints_Pl_V0_1_0().translate("wdl")

