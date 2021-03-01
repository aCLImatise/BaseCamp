from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cfm_Predict_V0_1_0 = CommandToolBuilder(tool="cfm_predict", base_command=["cfm-predict"], inputs=[ToolInput(tag="in_input_smiles_or_inch_i", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_prob_thresh_for_prune", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_param_filename", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_config_filename", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_include_annotations", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_filename", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_apply_post_processing", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cfm_Predict_V0_1_0().translate("wdl", allow_empty_container=True)

