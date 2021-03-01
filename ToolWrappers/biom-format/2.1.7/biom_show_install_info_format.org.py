from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Biom_Show_Install_Info_Format_Org_V0_1_0 = CommandToolBuilder(tool="biom_show_install_info_format.org", base_command=["biom", "show-install-info", "format.org"], inputs=[ToolInput(tag="in_biom", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_show_install_info", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biom_Show_Install_Info_Format_Org_V0_1_0().translate("wdl", allow_empty_container=True)

