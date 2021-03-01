from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Art_Solid_V0_1_0 = CommandToolBuilder(tool="art_SOLiD", base_command=["art_SOLiD"], inputs=[ToolInput(tag="in_read_type_amplicon", input_type=String(optional=True), prefix="-A", doc=InputDocumentation(doc="the read type for amplicon sequencing simulation (s:single-end, m: matepair, p: paired-end)")), ToolInput(tag="in_use_cigar_alignment", input_type=String(optional=True), prefix="-M", doc=InputDocumentation(doc="to use CIGAR 'M' instead of '=/X' for alignment match/mismatch")), ToolInput(tag="in_generate_alignment_file", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="to generate a SAM alignment file")), ToolInput(tag="in_random_seed_simulation", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="the random seed for the simulation")), ToolInput(tag="in_scale_factor_adjusting", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="the scale factor adjusting error rate (e.g., -f 0 for zero-error rate simulation)")), ToolInput(tag="in_users_own_read", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="user's own read profile for simulation"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Art_Solid_V0_1_0().translate("wdl", allow_empty_container=True)

