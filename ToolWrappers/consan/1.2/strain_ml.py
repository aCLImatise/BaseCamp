from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Strain_Ml_V0_1_0 = CommandToolBuilder(tool="strain_ml", base_command=["strain_ml"], inputs=[ToolInput(tag="in_use_string_defaults", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc=": Use grammar <string>, defaults to STA")), ToolInput(tag="in_save_model_file", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc=": save model file to <file>")), ToolInput(tag="in_print_parameters_model", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc=": print out parameters of model")), ToolInput(tag="in_print_counts_used", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": print out counts used for model")), ToolInput(tag="in__print_traceback", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": print traceback")), ToolInput(tag="in__debugging_output", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": debugging output")), ToolInput(tag="in__verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": verbose output")), ToolInput(tag="in_turn_weighting_scheme", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": Turn off weighting scheme")), ToolInput(tag="in_force_recalculate_weights", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": Force recalculate weights (defaults to given when available)")), ToolInput(tag="in_use_voronoi_weights", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc=": Use Voronoi weights instead of GSC")), ToolInput(tag="in_setup_tying_typeno", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc=": Setup Tying Type\n[No tying = 0; NT counts = 1; Gap Open/Extend counts = 2;\nGap Open/Extend probs = 3; LR Symmetry 4 (default)]")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_ml_train", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_training_set_files", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strain_Ml_V0_1_0().translate("wdl", allow_empty_container=True)

