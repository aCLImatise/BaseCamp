from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cactus_Filladjacencies_V0_1_0 = CommandToolBuilder(tool="cactus_fillAdjacencies", base_command=["cactus_fillAdjacencies"], inputs=[ToolInput(tag="in_loglevel", input_type=Boolean(optional=True), prefix="--logLevel", doc=InputDocumentation(doc=": Set the log level")), ToolInput(tag="in_cactus_disk", input_type=Boolean(optional=True), prefix="--cactusDisk", doc=InputDocumentation(doc=": The location of the flower disk directory")), ToolInput(tag="in_tempdir_root", input_type=Boolean(optional=True), prefix="--tempDirRoot", doc=InputDocumentation(doc=": The temp file root directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Filladjacencies_V0_1_0().translate("wdl", allow_empty_container=True)

