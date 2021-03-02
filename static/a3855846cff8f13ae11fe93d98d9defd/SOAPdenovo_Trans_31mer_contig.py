from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Soapdenovo_Trans_31Mer_Contig_V0_1_0 = CommandToolBuilder(tool="SOAPdenovo_Trans_31mer_contig", base_command=["SOAPdenovo-Trans-31mer", "contig"], inputs=[ToolInput(tag="in_string_inputgraph_prefix", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="<string>        inputGraph: prefix of input graph file name")), ToolInput(tag="in_int_edgecovcutoff_edges", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="<int>           EdgeCovCutoff: edges with coverage no larger than EdgeCovCutoff will be deleted, [2]")), ToolInput(tag="in_int_mergelevelmin_max", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="<int>           mergeLevel(min 0, max 3): the strength of merging similar sequences during contiging, [1]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Soapdenovo_Trans_31Mer_Contig_V0_1_0().translate("wdl", allow_empty_container=True)

