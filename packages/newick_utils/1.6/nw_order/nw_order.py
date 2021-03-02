from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Nw_Order_V0_1_0 = CommandToolBuilder(tool="nw_order", base_command=["nw_order"], inputs=[ToolInput(tag="in_specify_order_criterion", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc=": specify order criterion. Possible criteria are 'a'\n(alphanumeric oder of labels), 'n' (number of descendants:\nnodes with fewer descendans appear first), 'd' (de-ladderize:\nalternately put nodes with fewer descendants before or after\nthose with more)\nThe default (i.e., if option -c is not given) is 'a'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Order_V0_1_0().translate("wdl", allow_empty_container=True)

