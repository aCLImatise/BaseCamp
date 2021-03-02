from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Peakzilla_Py_V0_1_0 = CommandToolBuilder(tool="peakzilla.py", base_command=["peakzilla.py"], inputs=[ToolInput(tag="in_model_peaks", input_type=Int(optional=True), prefix="--model_peaks", doc=InputDocumentation(doc="number of most highly enriched regions used to\nestimate peak size: default = 200")), ToolInput(tag="in_enrichment_cut_off", input_type=Int(optional=True), prefix="--enrichment_cutoff", doc=InputDocumentation(doc="minimum cutoff for fold enrichment: default = 2")), ToolInput(tag="in_score_cut_off", input_type=Int(optional=True), prefix="--score_cutoff", doc=InputDocumentation(doc="minimum cutoff for peak score: default = 1")), ToolInput(tag="in_fragment_size", input_type=Int(optional=True), prefix="--fragment_size", doc=InputDocumentation(doc="manually set fragment size in bp: default = estimate\nfrom data")), ToolInput(tag="in_gaussian", input_type=Boolean(optional=True), prefix="--gaussian", doc=InputDocumentation(doc="use empirical model estimate instead of gaussian")), ToolInput(tag="in_bed_pe", input_type=Boolean(optional=True), prefix="--bedpe", doc=InputDocumentation(doc="input is paired end and in BEDPE format")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="directory/filename to store log file to: default =")), ToolInput(tag="in_log_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc="-n, --negative        write negative peaks to negative_peaks.tsv"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peakzilla_Py_V0_1_0().translate("wdl", allow_empty_container=True)

