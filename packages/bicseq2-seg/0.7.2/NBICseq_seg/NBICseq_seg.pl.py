from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Directory, File, String, Boolean

Nbicseq_Seg_Pl_V0_1_0 = CommandToolBuilder(tool="NBICseq_seg.pl", base_command=["NBICseq-seg.pl"], inputs=[ToolInput(tag="in_lambda", input_type=Float(optional=True), prefix="--lambda", doc=InputDocumentation(doc=": the (positive) penalty used for BIC-seq")), ToolInput(tag="in_tmp", input_type=Directory(optional=True), prefix="--tmp", doc=InputDocumentation(doc=": the tmp directory; If unspecified, use /usr/local/bin/tmp/")), ToolInput(tag="in_fig", input_type=File(optional=True), prefix="--fig", doc=InputDocumentation(doc=": plot the CNV profile in a png file")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc=": the title of the figure")), ToolInput(tag="in_nrm", input_type=Boolean(optional=True), prefix="--nrm", doc=InputDocumentation(doc=": do not remove likely germline CNVs (with a matched normal) or segments with bad mappability (without a matched normal)")), ToolInput(tag="in_bootstrap", input_type=Boolean(optional=True), prefix="--bootstrap", doc=InputDocumentation(doc=": perform bootstrap test to assign confidence (only for one sample case)")), ToolInput(tag="in_no_scale", input_type=Boolean(optional=True), prefix="--noscale", doc=InputDocumentation(doc=": do not automatically adjust the lambda parameter according to the noise level in the data")), ToolInput(tag="in_strict", input_type=Boolean(optional=True), prefix="--strict", doc=InputDocumentation(doc=": if specified, use a more stringent method to ajust the lambda parameter")), ToolInput(tag="in_control", input_type=Boolean(optional=True), prefix="--control", doc=InputDocumentation(doc=": the data has a control genome")), ToolInput(tag="in_detail", input_type=Boolean(optional=True), prefix="--detail", doc=InputDocumentation(doc=": if specified, print the detailed segmentation result (for multiSample only)")), ToolInput(tag="in_config_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nbicseq_Seg_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

