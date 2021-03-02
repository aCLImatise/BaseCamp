from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Fc_Ovlp_Stats_V0_1_0 = CommandToolBuilder(tool="fc_ovlp_stats", base_command=["fc_ovlp_stats"], inputs=[ToolInput(tag="in_n_core", input_type=Int(optional=True), prefix="--n-core", doc=InputDocumentation(doc="number of processes used for generating consensus; 0 for main process only (default: 4)")), ToolInput(tag="in_fof_n", input_type=File(optional=True), prefix="--fofn", doc=InputDocumentation(doc="file contains the path of all LAS file to be processed in parallel (default: None)")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="min length of the reads (default: 2500)")), ToolInput(tag="in_db_fn", input_type=Int(optional=True), prefix="--db-fn", doc=InputDocumentation(doc="DAZZLER DB of preads (default: ./1-preads_ovl/preads.db)")), ToolInput(tag="in_stream", input_type=Boolean(optional=True), prefix="--stream", doc=InputDocumentation(doc="stream from LA4Falcon, instead of slurping all at once; can save memory for large data (default: False)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="single-threaded, plus other aids to debugging (default: False)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress cmd reporting on stderr (default: False)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Ovlp_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

