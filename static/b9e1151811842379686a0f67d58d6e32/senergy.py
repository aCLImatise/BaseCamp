from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Senergy_V0_1_0 = CommandToolBuilder(tool="senergy", base_command=["senergy"], inputs=[ToolInput(tag="in_etot", input_type=String(), position=0, doc=InputDocumentation(doc="EKtot       EPtot        BOND       ANGLE       DIHED      1-4 NB     1-4 EEL     VDWAALS       EELEC      EHBOND  CONSTRAINT      EAMBER"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Senergy_V0_1_0().translate("wdl", allow_empty_container=True)

