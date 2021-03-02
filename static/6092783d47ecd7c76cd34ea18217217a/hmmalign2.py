from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Hmmalign2_V0_1_0 = CommandToolBuilder(tool="hmmalign2", base_command=["hmmalign2"], inputs=[ToolInput(tag="in_only_print_symbols", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": only print symbols aligned to match states")), ToolInput(tag="in_save_alignment_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": save alignment in file <f>")), ToolInput(tag="in_quiet_suppress_verbose", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": quiet - suppress verbose banner")), ToolInput(tag="in_in_format", input_type=File(optional=True), prefix="--informat", doc=InputDocumentation(doc=": sequence file is in format <s>")), ToolInput(tag="in_map_ali", input_type=File(optional=True), prefix="--mapali", doc=InputDocumentation(doc=": include alignment in file <f> using map in HMM")), ToolInput(tag="in_one_line", input_type=Boolean(optional=True), prefix="--oneline", doc=InputDocumentation(doc=": output Stockholm fmt with 1 line/seq, not interleaved")), ToolInput(tag="in_out_format", input_type=String(optional=True), prefix="--outformat", doc=InputDocumentation(doc=": output alignment in format <s> [default: Stockholm]\nformats include: MSF, Clustal, Phylip, SELEX")), ToolInput(tag="in_with_ali", input_type=File(optional=True), prefix="--withali", doc=InputDocumentation(doc=": include alignment to (fixed) alignment in file <f>")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_hmm_align", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hmm_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmalign2_V0_1_0().translate("wdl", allow_empty_container=True)

