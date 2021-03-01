from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Igdiscover_Multidiscover_V0_1_0 = CommandToolBuilder(tool="igdiscover_multidiscover", base_command=["igdiscover", "multidiscover"], inputs=[ToolInput(tag="in_minimum_frequency", input_type=Int(optional=True), prefix="--minimum-frequency", doc=InputDocumentation(doc="Minimum number of datasets in which sequence must\noccur (default is no. of files divided by two)")), ToolInput(tag="in_minimum_db_diff", input_type=Int(optional=True), prefix="--minimum-db-diff", doc=InputDocumentation(doc="Use only sequences that have at least DIST differences\nto the database sequence. Default: 1\n")), ToolInput(tag="in_discover_dot_tab", input_type=String(), position=0, doc=InputDocumentation(doc="Table created by the 'discover' command (give at least\ntwo)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Multidiscover_V0_1_0().translate("wdl", allow_empty_container=True)

