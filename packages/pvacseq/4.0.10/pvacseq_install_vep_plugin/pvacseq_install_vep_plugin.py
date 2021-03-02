from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pvacseq_Install_Vep_Plugin_V0_1_0 = CommandToolBuilder(tool="pvacseq_install_vep_plugin", base_command=["pvacseq", "install_vep_plugin"], inputs=[ToolInput(tag="in_vep_plugins_path", input_type=String(), position=0, doc=InputDocumentation(doc="Path to your VEP_plugins directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pvacseq_Install_Vep_Plugin_V0_1_0().translate("wdl", allow_empty_container=True)

