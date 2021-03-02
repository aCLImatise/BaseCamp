from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Get_Fisher_Scores_V0_1_0 = CommandToolBuilder(tool="get_fisher_scores", base_command=["get_fisher_scores"], inputs=[ToolInput(tag="in_fisher_feature", input_type=File(optional=True), prefix="-fisher_feature", doc=InputDocumentation(doc="|insert|match|match_prior|simple")), ToolInput(tag="in_null_score_weight_scale", input_type=Int(optional=True), prefix="-null_score_weight_scale", doc=InputDocumentation(doc="(0.0 to disable)")), ToolInput(tag="in_i_modelfile_modelfile", input_type=Int(), position=0, doc=InputDocumentation(doc="-i model_file  (or -modelfile)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Fisher_Scores_V0_1_0().translate("wdl", allow_empty_container=True)

