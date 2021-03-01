from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, File, String, Directory

Nbicseq_Norm_Pl_V0_1_0 = CommandToolBuilder(tool="NBICseq_norm.pl", base_command=["NBICseq-norm.pl"], inputs=[ToolInput(tag="in__fragment_size", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc=": fragment size")), ToolInput(tag="in_subsample_percentage_default", input_type=Float(optional=True), prefix="-p", doc=InputDocumentation(doc=": a subsample percentage: default 0.0002.")), ToolInput(tag="in_bin_expected_observed", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc=": bin the expected and observed as <int> bp bins; Default 100.")), ToolInput(tag="in_gc_bin", input_type=Boolean(optional=True), prefix="--gc_bin", doc=InputDocumentation(doc=": if specified, report the GC-content in the bins")), ToolInput(tag="in_no_map_bin", input_type=Boolean(optional=True), prefix="--NoMapBin", doc=InputDocumentation(doc=": if specified, do NOT bin the reads according to the mappability")), ToolInput(tag="in_bin_only", input_type=Boolean(optional=True), prefix="--bin_only", doc=InputDocumentation(doc=": only bin the reads without normalization")), ToolInput(tag="in_fig", input_type=File(optional=True), prefix="--fig", doc=InputDocumentation(doc=": plot the read count VS GC figure in the specified file (in pdf format)")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc=": title of the figure")), ToolInput(tag="in_tmp", input_type=Directory(optional=True), prefix="--tmp", doc=InputDocumentation(doc=": the tmp directory; If unspecified, use /usr/local/bin/tmp/")), ToolInput(tag="in_config_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nbicseq_Norm_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

