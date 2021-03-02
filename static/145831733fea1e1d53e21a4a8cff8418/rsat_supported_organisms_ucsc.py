from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Supported_Organisms_Ucsc_V0_1_0 = CommandToolBuilder(tool="rsat_supported_organisms_ucsc", base_command=["rsat", "supported-organisms-ucsc"], inputs=[ToolInput(tag="in_suu_ported_organism_uscs", input_type=String(), position=0, doc=InputDocumentation(doc="[1mAUTHORS[0m")), ToolInput(tag="in_examples", input_type=String(), position=0, doc=InputDocumentation(doc="Retrieve mammal genome disponible on UCSC.\nsupported-organims-uscs.pl -taxon mammal"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Supported_Organisms_Ucsc_V0_1_0().translate("wdl", allow_empty_container=True)

