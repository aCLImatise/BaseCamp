from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Cnvkit_Py_Fix_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_fix", base_command=["cnvkit.py", "fix"], inputs=[ToolInput(tag="in_cluster", input_type=Boolean(optional=True), prefix="--cluster", doc=InputDocumentation(doc="Compare and use cluster-specific values present in the\nreference profile. (Requires that the reference\nprofile was built with the --cluster option.)")), ToolInput(tag="in_sample_id", input_type=File(optional=True), prefix="--sample-id", doc=InputDocumentation(doc="Sample ID for target/antitarget files. Otherwise\ninferred from file names.")), ToolInput(tag="in_no_gc", input_type=Boolean(optional=True), prefix="--no-gc", doc=InputDocumentation(doc="Skip GC correction.")), ToolInput(tag="in_no_edge", input_type=Boolean(optional=True), prefix="--no-edge", doc=InputDocumentation(doc="Skip edge-effect correction.")), ToolInput(tag="in_no_r_mask", input_type=Boolean(optional=True), prefix="--no-rmask", doc=InputDocumentation(doc="Skip RepeatMasker correction.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name.\n")), ToolInput(tag="in_target", input_type=String(), position=0, doc=InputDocumentation(doc="Target coverage file (.targetcoverage.cnn).")), ToolInput(tag="in_anti_target", input_type=String(), position=1, doc=InputDocumentation(doc="Antitarget coverage file (.antitargetcoverage.cnn).")), ToolInput(tag="in_reference", input_type=String(), position=2, doc=InputDocumentation(doc="Reference coverage (.cnn)."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Fix_V0_1_0().translate("wdl", allow_empty_container=True)

