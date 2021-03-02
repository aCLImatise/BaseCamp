from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Genepredtomafframes_V0_1_0 = CommandToolBuilder(tool="genePredToMafFrames", base_command=["genePredToMafFrames"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="-bed", doc=InputDocumentation(doc="- output a bed of for each mafFrame region, useful for debugging.")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="-verbose", doc=InputDocumentation(doc="- enable verbose tracing, the following levels are implemented:\n3 - print information about data used to compute each record.\n4 - dump information about the gene mappings that were constructed\n5 - dump information about the gene mappings after split processing\n6 - dump information about the gene mappings after frame linking\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genepredtomafframes_V0_1_0().translate("wdl", allow_empty_container=True)

