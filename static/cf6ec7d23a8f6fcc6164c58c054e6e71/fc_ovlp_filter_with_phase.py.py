from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Fc_Ovlp_Filter_With_Phase_Py_V0_1_0 = CommandToolBuilder(tool="fc_ovlp_filter_with_phase.py", base_command=["fc_ovlp_filter_with_phase.py"], inputs=[ToolInput(tag="in_n_core", input_type=Int(optional=True), prefix="--n-core", doc=InputDocumentation(doc="number of processes used for generating consensus\n(default: 4)")), ToolInput(tag="in_fof_n", input_type=File(optional=True), prefix="--fofn", doc=InputDocumentation(doc="file contains the path of all LAS file to be processed\nin parallel (default: None)")), ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="read db file path (default: None)")), ToolInput(tag="in_max_diff", input_type=Int(optional=True), prefix="--max-diff", doc=InputDocumentation(doc="max difference of 5' and 3' coverage (default: None)")), ToolInput(tag="in_max_cov", input_type=Int(optional=True), prefix="--max-cov", doc=InputDocumentation(doc="max coverage of 5' or 3' coverage (default: None)")), ToolInput(tag="in_min_cov", input_type=Int(optional=True), prefix="--min-cov", doc=InputDocumentation(doc="min coverage of 5' or 3' coverage (default: None)")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="min length of the reads (default: 2500)")), ToolInput(tag="in_best_n", input_type=Int(optional=True), prefix="--bestn", doc=InputDocumentation(doc="output at least best n overlaps on 5' or 3' ends if\npossible (default: 10)")), ToolInput(tag="in_rid_phase_map", input_type=File(optional=True), prefix="--rid-phase-map", doc=InputDocumentation(doc="the file that encode the relationship of the read id\nto phase blocks (default: None)")), ToolInput(tag="in_strictness", input_type=Int(optional=True), prefix="--strictness", doc=InputDocumentation(doc="If >0, keep *only* the edges which have both nodes of\nthe same phase. Unphased edges are considered\ndangereous here and removed. (default: 0)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Ovlp_Filter_With_Phase_Py_V0_1_0().translate("wdl", allow_empty_container=True)

