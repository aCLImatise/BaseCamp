from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pmodel_V0_1_0 = CommandToolBuilder(tool="pModel", base_command=["pModel"], inputs=[ToolInput(tag="in_print_transition_parameters", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": Print transition parameters")), ToolInput(tag="in_print_pairwise_emission", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc=": Print 16x16 pairwise emission parameters")), ToolInput(tag="in_print_alignment_emission", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": Print 4x4 alignment emission parameters")), ToolInput(tag="in_print_background_gap", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": Print 4 background (to gap) parameters")), ToolInput(tag="in_print_parameters_scores", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": Print parameters as scores (defaults to as probs)")), ToolInput(tag="in_print_parameters_probs", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc=": Print parameters as both probs and scores")), ToolInput(tag="in_linearize_output_valid", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=": Linearize output for gnuplot (not valid with -q or -S)")), ToolInput(tag="in_include_labels_linear", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Include labels in linear output")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_mod_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pmodel_V0_1_0().translate("wdl", allow_empty_container=True)

