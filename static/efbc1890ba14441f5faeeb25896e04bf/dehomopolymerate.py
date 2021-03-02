from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dehomopolymerate_V0_1_0 = CommandToolBuilder(tool="dehomopolymerate", base_command=["dehomopolymerate"], inputs=[ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print version and exit")), ToolInput(tag="in_quiet_mode_nonerror", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Quiet mode; not non-error output")), ToolInput(tag="in_output_fasta_fastq", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Output FASTA not FASTQ")), ToolInput(tag="in_output_raw_one", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="Output RAW one line per sequence")), ToolInput(tag="in_discard_output_sequences", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="Discard output sequences shorter then L bp"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dehomopolymerate_V0_1_0().translate("wdl", allow_empty_container=True)

