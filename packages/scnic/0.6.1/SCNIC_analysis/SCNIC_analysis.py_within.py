from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Int, Boolean

Scnic_Analysis_Py_Within_V0_1_0 = CommandToolBuilder(tool="SCNIC_analysis.py_within", base_command=["SCNIC_analysis.py", "within"], inputs=[ToolInput(tag="in_input_loc", input_type=File(optional=True), prefix="--input_loc", doc=InputDocumentation(doc="location of input biom file (default: None)")), ToolInput(tag="in_output_loc", input_type=Directory(optional=True), prefix="--output_loc", doc=InputDocumentation(doc="output directory (default: None)")), ToolInput(tag="in_correl_method", input_type=String(optional=True), prefix="--correl_method", doc=InputDocumentation(doc="correlation method (default: sparcc)")), ToolInput(tag="in_p_adjust", input_type=String(optional=True), prefix="--p_adjust", doc=InputDocumentation(doc="p-value adjustment (default: fdr_bh)")), ToolInput(tag="in_min_sample", input_type=Int(optional=True), prefix="--min_sample", doc=InputDocumentation(doc="minimum number of samples present in (default: None)")), ToolInput(tag="in_procs", input_type=Int(optional=True), prefix="--procs", doc=InputDocumentation(doc="number of processors to use (default: 1)")), ToolInput(tag="in_sparc_c_filter", input_type=Boolean(optional=True), prefix="--sparcc_filter", doc=InputDocumentation(doc="filter as described in SparCC paper (default: False)")), ToolInput(tag="in_sparc_c_p", input_type=Int(optional=True), prefix="--sparcc_p", doc=InputDocumentation(doc="Calculate p-value for sparCC R value, give number of\nbootstraps (default: None)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="give verbose messages to STDOUT (default: False)"))], outputs=[ToolOutput(tag="out_output_loc", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_loc", type_hint=File()), doc=OutputDocumentation(doc="output directory (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scnic_Analysis_Py_Within_V0_1_0().translate("wdl", allow_empty_container=True)

