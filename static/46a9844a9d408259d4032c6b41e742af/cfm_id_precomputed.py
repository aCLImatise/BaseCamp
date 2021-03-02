from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cfm_Id_Precomputed_V0_1_0 = CommandToolBuilder(tool="cfm_id_precomputed", base_command=["cfm-id-precomputed"], inputs=[ToolInput(tag="in_cfm_id_dot_exe", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_spectrum_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_id", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_candidate_file", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_num_highest", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_ppm_mass_to_l", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_abs_mass_to_l", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_score_type", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_filename", input_type=String(), position=8, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cfm_Id_Precomputed_V0_1_0().translate("wdl", allow_empty_container=True)

