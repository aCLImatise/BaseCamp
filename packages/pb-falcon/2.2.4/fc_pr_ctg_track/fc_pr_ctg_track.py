from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Fc_Pr_Ctg_Track_V0_1_0 = CommandToolBuilder(tool="fc_pr_ctg_track", base_command=["fc_pr_ctg_track"], inputs=[ToolInput(tag="in_n_core", input_type=Int(optional=True), prefix="--n_core", doc=InputDocumentation(doc="number of processes used for for tracking reads; 0 for main process only (default: 4)")), ToolInput(tag="in_base_dir", input_type=String(optional=True), prefix="--base_dir", doc=InputDocumentation(doc="the base working dir of a FALCON assembly (default: ./)")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min_len", doc=InputDocumentation(doc="min length of the reads (default: 2500)")), ToolInput(tag="in_stream", input_type=Boolean(optional=True), prefix="--stream", doc=InputDocumentation(doc="stream from LA4Falcon, instead of slurping all at once; can save memory for large data (default: False)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="single-threaded, plus other aids to debugging (default: False)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress cmd reporting on stderr (default: False)")), ToolInput(tag="in_best_n", input_type=Int(optional=True), prefix="--bestn", doc=InputDocumentation(doc="keep best n hits (default: 40)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Pr_Ctg_Track_V0_1_0().translate("wdl", allow_empty_container=True)

