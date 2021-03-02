from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Fc_Ovlp_Filter_V0_1_0 = CommandToolBuilder(tool="fc_ovlp_filter", base_command=["fc_ovlp_filter"], inputs=[ToolInput(tag="in_n_core", input_type=Int(optional=True), prefix="--n_core", doc=InputDocumentation(doc="number of processes used for generating consensus; 0\nfor main process only (default=4)")), ToolInput(tag="in_fof_n", input_type=File(optional=True), prefix="--fofn", doc=InputDocumentation(doc="file contains the path of all LAS file to be processed\nin parallel")), ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="read db file path")), ToolInput(tag="in_max_diff", input_type=Int(optional=True), prefix="--max_diff", doc=InputDocumentation(doc="max difference of 5' and 3' coverage")), ToolInput(tag="in_max_cov", input_type=Int(optional=True), prefix="--max_cov", doc=InputDocumentation(doc="max coverage of 5' or 3' coverage")), ToolInput(tag="in_min_cov", input_type=Int(optional=True), prefix="--min_cov", doc=InputDocumentation(doc="min coverage of 5' or 3' coverage")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min_len", doc=InputDocumentation(doc="min length of the reads (default=2500)")), ToolInput(tag="in_best_n", input_type=Int(optional=True), prefix="--bestn", doc=InputDocumentation(doc="output at least best n overlaps on 5' or 3' ends if\npossible (default=10)")), ToolInput(tag="in_stream", input_type=Boolean(optional=True), prefix="--stream", doc=InputDocumentation(doc="stream from LA4Falcon, instead of slurping all at once;\ncan save memory for large data")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="single-threaded, plus other aids to debugging")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress cmd reporting on stderr"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Ovlp_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

