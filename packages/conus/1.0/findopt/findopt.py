from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Findopt_V0_1_0 = CommandToolBuilder(tool="findopt", base_command=["findopt"], inputs=[ToolInput(tag="in_use_model_file", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc=": Use model <file>")), ToolInput(tag="in_max_num_suboptimals", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc=": Max num suboptimals to look at")), ToolInput(tag="in_print_parameters_model", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc=": print out parameters of model")), ToolInput(tag="in_print_parse_trees", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": print all parse trees (lots!)")), ToolInput(tag="in__debugging_output", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": debugging output")), ToolInput(tag="in__verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": verbose output")), ToolInput(tag="in_debugging_fill_matrix", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": debugging, print fill matrix from cyk")), ToolInput(tag="in_print_real_predicted", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": print real with predicted structure")), ToolInput(tag="in_print_predicted_structures", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": print predicted structures in stockholm format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findopt_V0_1_0().translate("wdl", allow_empty_container=True)

