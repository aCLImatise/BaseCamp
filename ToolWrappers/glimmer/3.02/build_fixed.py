from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Build_Fixed_V0_1_0 = CommandToolBuilder(tool="build_fixed", base_command=["build-fixed"], inputs=[ToolInput(tag="in_set_depth_model", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Set depth of model to <num>")), ToolInput(tag="in_train_using_strings", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Train using strings specified by subscripts in file\nnamed <fn>")), ToolInput(tag="in_nk_permutation_describing", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc=",n2,...,nk  Permutation describing re-ordering of\ncharacter positions of input string to build model")), ToolInput(tag="in_specify_special_position", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Specify special position in model")), ToolInput(tag="in_output_model_text", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Output model as text (for debugging only)")), ToolInput(tag="in_set_verbose_level", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Set verbose level; higher is more diagnostic printouts")), ToolInput(tag="in_options", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Build_Fixed_V0_1_0().translate("wdl", allow_empty_container=True)

