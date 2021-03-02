from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Sambamba_Index_V0_1_0 = CommandToolBuilder(tool="sambamba_index", base_command=["sambamba", "index"], inputs=[ToolInput(tag="in_n_threads", input_type=Int(optional=True), prefix="--nthreads", doc=InputDocumentation(doc="number of threads to use for decompression")), ToolInput(tag="in_show_progress", input_type=Boolean(optional=True), prefix="--show-progress", doc=InputDocumentation(doc="show progress bar in STDERR")), ToolInput(tag="in_check_bins", input_type=Boolean(optional=True), prefix="--check-bins", doc=InputDocumentation(doc="check that bins are set correctly")), ToolInput(tag="in_fast_a_input", input_type=Boolean(optional=True), prefix="--fasta-input", doc=InputDocumentation(doc="specify that input is in FASTA format\n")), ToolInput(tag="in_samba_mba_index", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_dot_bam_vertical_line_input_dot_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sambamba:0.8.0--h984e79f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sambamba_Index_V0_1_0().translate("wdl")

