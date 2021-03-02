from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, String, Boolean

Methdiff_Py_V0_1_0 = CommandToolBuilder(tool="methdiff.py", base_command=["methdiff.py"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="output differential methylation file name. (required)")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc="reference genome fasta file. (required)")), ToolInput(tag="in_bin", input_type=Int(optional=True), prefix="--bin", doc=InputDocumentation(doc="bin size. [default: 100]")), ToolInput(tag="in_pval", input_type=Float(optional=True), prefix="--pval", doc=InputDocumentation(doc="p-value cut-off. [default: 0.01]")), ToolInput(tag="in_diff", input_type=Float(optional=True), prefix="--diff", doc=InputDocumentation(doc="minimal abs meth ratio difference. [default: 0.33]")), ToolInput(tag="in_context", input_type=String(optional=True), prefix="--context", doc=InputDocumentation(doc="methylation pattern type [CG|CHG|CHH], multiple types\nseparated by ','. [default: all]")), ToolInput(tag="in_labels", input_type=String(optional=True), prefix="--labels", doc=InputDocumentation(doc="output label for each group, separated by ','.\n[default: filenames]")), ToolInput(tag="in_min_depth", input_type=Int(optional=True), prefix="--min-depth", doc=InputDocumentation(doc="minimal average coverage. [default: 1]")), ToolInput(tag="in_strand", input_type=String(optional=True), prefix="--strand", doc=InputDocumentation(doc="which strand to process, [both|forward|reverse].\n[default: both]")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="don't print progress on stderr."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="output differential methylation file name. (required)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Methdiff_Py_V0_1_0().translate("wdl", allow_empty_container=True)

