from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Hmmemit2_V0_1_0 = CommandToolBuilder(tool="hmmemit2", base_command=["hmmemit2"], inputs=[ToolInput(tag="in_write_generated_sequences", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": write generated sequences as an alignment, not FASTA")), ToolInput(tag="in_generate_single_sequence", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": generate a single 'consensus' sequence")), ToolInput(tag="in_emit_sequences_default", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc=": emit <n> sequences (default 10)")), ToolInput(tag="in_save_sequences_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": save sequences in file <f>")), ToolInput(tag="in_quiet_suppress_verbose", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": quiet - suppress verbose banner")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc=": set random number seed to <n>")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_hmm_emit", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hmm_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmemit2_V0_1_0().translate("wdl", allow_empty_container=True)

