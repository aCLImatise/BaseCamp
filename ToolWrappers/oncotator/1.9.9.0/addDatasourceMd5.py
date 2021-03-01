from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Adddatasourcemd5_V0_1_0 = CommandToolBuilder(tool="addDatasourceMd5", base_command=["addDatasourceMd5"], inputs=[ToolInput(tag="in_ds_dir", input_type=String(), position=0, doc=InputDocumentation(doc="datasource directory.  This should be the genome_build dir inside a datasource dir."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Adddatasourcemd5_V0_1_0().translate("wdl", allow_empty_container=True)

