from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Garnier_V0_1_0 = CommandToolBuilder(tool="_garnier", base_command=["_garnier"], inputs=[ToolInput(tag="in_idc", input_type=Boolean(optional=True), prefix="-idc", doc=InputDocumentation(doc="integer    [0] In their paper, GOR mention that if you\nknow something about the secondary structure\ncontent of the protein you are analyzing,\nyou can do better in prediction. 'idc' is an\nindex into a set of arrays, dharr[] and\ndsarr[], which provide 'decision constants'\n(dch, dcs), which are offsets that are\napplied to the weights for the helix and\nsheet (extend) terms. So, idc=0 says don't\nuse the decision constant offsets, and idc=1\nto 6 indicates that various combinations of\ndch,dcs offsets should be used. (Integer\nfrom 0 to 6)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Garnier_V0_1_0().translate("wdl", allow_empty_container=True)

