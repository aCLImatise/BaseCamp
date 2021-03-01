from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float

Tpocket_V0_1_0 = CommandToolBuilder(tool="tpocket", base_command=["tpocket"], inputs=[ToolInput(tag="in_write_global_performance", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc=": Write global performance to this file\nDefault name: ./stats_g.txt.           (./stats_g.txt)")), ToolInput(tag="in_write_pocket_statistics", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": Write pocket detailed statistics to .\nthis file Default name: ./stats_p.txt  (./stats_p.txt)")), ToolInput(tag="in_distance_criteria_ways", input_type=Float(optional=True), prefix="-d", doc=InputDocumentation(doc=": Distance criteria for the 2 ways to\ndefine the actual pocket               (4.0)"))], outputs=[], container="quay.io/biocontainers/fpocket:3.1.4.2", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tpocket_V0_1_0().translate("wdl")

