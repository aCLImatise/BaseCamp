from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Scompare_V0_1_0 = CommandToolBuilder(tool="scompare", base_command=["scompare"], inputs=[ToolInput(tag="in_output_given_structure", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc=": Output of given structure in ordered pairs (needed for comppair)")), ToolInput(tag="in_ensure_selection_results", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc=": Ensure that pin selection results in something near X Mbytes memory")), ToolInput(tag="in_do_int_pins", input_type=Int(optional=True), prefix="-C", doc=InputDocumentation(doc=": do CYK and use <int> pins from trusted alignment")), ToolInput(tag="in_do_int_predicted", input_type=Int(optional=True), prefix="-P", doc=InputDocumentation(doc=": do CYK and use <int> predicted pins )")), ToolInput(tag="in_do_full_sankoff", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": do full sankoff (no constraints)")), ToolInput(tag="in__print_traceback", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": print traceback")), ToolInput(tag="in__debugging_output", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": debugging output")), ToolInput(tag="in__verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": verbose output")), ToolInput(tag="in_suppress_extra_output", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc=": suppress extra output")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_test_msa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scompare_V0_1_0().translate("wdl", allow_empty_container=True)

