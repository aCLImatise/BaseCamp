from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Fc_Ovlp_Stats_V0_1_0 = CommandToolBuilder(tool="fc_ovlp_stats", base_command=["fc_ovlp_stats"], inputs=[ToolInput(tag="in_n_core", input_type=Int(optional=True), prefix="--n_core", doc=InputDocumentation(doc="number of processes used for generating consensus; 0 for\nmain process only (default=4)")), ToolInput(tag="in_fof_n", input_type=File(optional=True), prefix="--fofn", doc=InputDocumentation(doc="file contains the path of all LAS file to be processed in")), ToolInput(tag="in_stream", input_type=Boolean(optional=True), prefix="--stream", doc=InputDocumentation(doc="stream from LA4Falcon, instead of slurping all at once;\ncan save memory for large data")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="single-threaded, plus other aids to debugging")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress cmd reporting on stderr")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min_len", doc=InputDocumentation(doc="")), ToolInput(tag="in_parallel", input_type=String(), position=0, doc=InputDocumentation(doc="--min_len MIN_LEN  min length of the reads"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Ovlp_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

