from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Rtg_Sdfsubseq_V0_1_0 = CommandToolBuilder(tool="rtg_sdfsubseq", base_command=["rtg", "sdfsubseq"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="input SDF")), ToolInput(tag="in_sequence_id", input_type=Boolean(optional=True), prefix="--sequence-id", doc=InputDocumentation(doc="if set, use sequence id instead of sequence name in\nregion (0-based)\nREGION+              the range to display. The format is one of\n<sequence_name>, <sequence_name>:<start>-<end>,\n<sequence_name>:<pos>+<length> or\n<sequence_name>:<pos>~<padding>. Must be specified 1\nor more times")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="if set, output in FASTA format")), ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="if set, output in FASTQ format")), ToolInput(tag="in_reverse_complement", input_type=String(optional=True), prefix="--reverse-complement", doc=InputDocumentation(doc="set, output in reverse complement"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Sdfsubseq_V0_1_0().translate("wdl", allow_empty_container=True)

