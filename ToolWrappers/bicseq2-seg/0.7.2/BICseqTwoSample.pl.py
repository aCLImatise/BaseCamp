from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Directory, File, String, Boolean

Bicseqtwosample_Pl_V0_1_0 = CommandToolBuilder(tool="BICseqTwoSample.pl", base_command=["BICseqTwoSample.pl"], inputs=[ToolInput(tag="in_lambda", input_type=Float(optional=True), prefix="--lambda", doc=InputDocumentation(doc=": the (positive) penalty used for BIC-seq")), ToolInput(tag="in_tmp", input_type=Directory(optional=True), prefix="--tmp", doc=InputDocumentation(doc=": the tmp directory; If unspecified, use /usr/local/bin/tmp/")), ToolInput(tag="in_fig", input_type=File(optional=True), prefix="--fig", doc=InputDocumentation(doc=": plot the CNV profile in a png file")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc=": the title of the figure")), ToolInput(tag="in_nrm", input_type=Boolean(optional=True), prefix="--nrm", doc=InputDocumentation(doc=": do not remove likely germline CNVs")), ToolInput(tag="in_bootstrap", input_type=Boolean(optional=True), prefix="--bootstrap", doc=InputDocumentation(doc=": perform bootstrap test to assign confidence")), ToolInput(tag="in_no_scale", input_type=Boolean(optional=True), prefix="--noscale", doc=InputDocumentation(doc=": do not automatically adjust the lambda parameter according to the noise level in the data")), ToolInput(tag="in_strict", input_type=Boolean(optional=True), prefix="--strict", doc=InputDocumentation(doc=": if specified, use a more stringent method to ajust the lambda parameter"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bicseqtwosample_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

