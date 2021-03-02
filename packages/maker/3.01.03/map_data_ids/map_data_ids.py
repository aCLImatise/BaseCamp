from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Map_Data_Ids_V0_1_0 = CommandToolBuilder(tool="map_data_ids", base_command=["map_data_ids"], inputs=[ToolInput(tag="in_col", input_type=String(), position=0, doc=InputDocumentation(doc="The column number (1 based) in the data file that\ncorresponds to old_name in the mapping file.")), ToolInput(tag="in_delimit", input_type=String(), position=1, doc=InputDocumentation(doc="The delimeter for the data file."))], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Map_Data_Ids_V0_1_0().translate("wdl")

