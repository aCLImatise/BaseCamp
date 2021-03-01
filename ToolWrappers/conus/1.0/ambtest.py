from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Ambtest_V0_1_0 = CommandToolBuilder(tool="ambtest", base_command=["ambtest"], inputs=[ToolInput(tag="in_req_use_model", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc=": (req) Use model <file>")), ToolInput(tag="in__verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": verbose output")), ToolInput(tag="in_ignore_given_structure", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": ignore given structure -- use CYK calculated structure")), ToolInput(tag="in__debugging_output", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": debugging output")), ToolInput(tag="in_print_parameters_model", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc=": print out parameters of model")), ToolInput(tag="in_debugging_print_traceback", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": debugging, print traceback")), ToolInput(tag="in_debugging_print_format", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": debugging, print CT format of structure")), ToolInput(tag="in_debugging_fill_matrix", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": debugging, print fill matrix from cyk")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file_in", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ambtest_V0_1_0().translate("wdl", allow_empty_container=True)

