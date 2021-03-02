from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cactus_Normalisation_V0_1_0 = CommandToolBuilder(tool="cactus_normalisation", base_command=["cactus_normalisation"], inputs=[ToolInput(tag="in_loglevel", input_type=Boolean(optional=True), prefix="--logLevel", doc=InputDocumentation(doc=": Set the log level")), ToolInput(tag="in_cactus_disk", input_type=Boolean(optional=True), prefix="--cactusDisk", doc=InputDocumentation(doc=": stKVDatabase conf string for the cactus database")), ToolInput(tag="in_max_number_of_chains", input_type=Boolean(optional=True), prefix="--maxNumberOfChains", doc=InputDocumentation(doc=": The maximum number of individual chains to promote into a flower."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Normalisation_V0_1_0().translate("wdl", allow_empty_container=True)

