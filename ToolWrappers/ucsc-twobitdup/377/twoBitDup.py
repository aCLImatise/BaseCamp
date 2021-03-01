from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Twobitdup_V0_1_0 = CommandToolBuilder(tool="twoBitDup", base_command=["twoBitDup"], inputs=[ToolInput(tag="in_key_list", input_type=File(optional=True), prefix="-keyList", doc=InputDocumentation(doc="- file to write a key list, two columns: md5sum and sequenceName\nNOTE: use of keyList is very time expensive for 2bit files\nwith a large number of sequences (> 5,000).  Better to\nuse a cluster run with the doIdKeys.pl automation script.")), ToolInput(tag="in_udc_dir", input_type=Boolean(optional=True), prefix="-udcDir", doc=InputDocumentation(doc="=/dir/to/cache - place to put cache for remote bigBed/bigWigs"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Twobitdup_V0_1_0().translate("wdl", allow_empty_container=True)

