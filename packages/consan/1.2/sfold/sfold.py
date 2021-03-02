from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Sfold_V0_1_0 = CommandToolBuilder(tool="sfold", base_command=["sfold"], inputs=[ToolInput(tag="in_use_parameters_grammar", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc=": Use parameters, grammar and scoring specified in model <file>")), ToolInput(tag="in_ensure_selection_results", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc=": Ensure that pin selection results in something near X Mbytes memory")), ToolInput(tag="in_use_int_pins", input_type=Int(optional=True), prefix="-C", doc=InputDocumentation(doc=": use <int> pins from trusted alignment")), ToolInput(tag="in_use_predicted_pins", input_type=Int(optional=True), prefix="-P", doc=InputDocumentation(doc=": use <int> predicted pins")), ToolInput(tag="in_output_single_pair", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc=": output as single sequences rather than pair")), ToolInput(tag="in_execute_unconstrained_algorithm", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": execute full (unconstrained) algorithm")), ToolInput(tag="in_print_parameters_model", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc=": print out parameters of model")), ToolInput(tag="in__print_traceback", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": print traceback")), ToolInput(tag="in__debugging_output", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": debugging output")), ToolInput(tag="in__verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": verbose output")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sfold_V0_1_0().translate("wdl", allow_empty_container=True)

