from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rsat_Matrix_Distrib_V0_1_0 = CommandToolBuilder(tool="rsat_matrix_distrib", base_command=["rsat", "matrix-distrib"], inputs=[ToolInput(tag="in_bg_format_dot_supported", input_type=Boolean(optional=True), prefix="-bg_format.Supported", doc=InputDocumentation(doc=": oligo-analysis, MotifSampler, meme. Default is:")), ToolInput(tag="in_matrix_distrib", input_type=String(), position=0, doc=InputDocumentation(doc="[1mDESCRIPTION[0m")), ToolInput(tag="in_util", input_type=String(), position=0, doc=InputDocumentation(doc="PSSM")), ToolInput(tag="in_oligo_analysis_dot", input_type=String(), position=0, doc=InputDocumentation(doc="For a description of available format, see [33mconvert-backgound-model")), ToolInput(tag="in_details_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-bgfile background_file[0m\nBackground model file.")), ToolInput(tag="in_convert_background_model_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-bg_pseudo #[0m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Matrix_Distrib_V0_1_0().translate("wdl", allow_empty_container=True)

