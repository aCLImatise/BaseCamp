from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Deepac_Vir_Convert_V0_1_0 = CommandToolBuilder(tool="deepac_vir_convert", base_command=["deepac-vir", "convert"], inputs=[ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="--weights", doc=InputDocumentation(doc="Use prepared weights instead of the model file.")), ToolInput(tag="in_config", input_type=String(), position=0, doc=InputDocumentation(doc="Training config file.")), ToolInput(tag="in_model", input_type=String(), position=1, doc=InputDocumentation(doc="Saved model."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Vir_Convert_V0_1_0().translate("wdl", allow_empty_container=True)

