from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Soapdenovo_Trans_31Mer_Map_V0_1_0 = CommandToolBuilder(tool="SOAPdenovo_Trans_31mer_map", base_command=["SOAPdenovo-Trans-31mer", "map"], inputs=[ToolInput(tag="in_string_configfile_file", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="<string>        configFile: the config file of reads")), ToolInput(tag="in_string_inputgraph_prefix", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="<string>        inputGraph: prefix of input graph file name")), ToolInput(tag="in_optional_output_gap", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="(optional)      output gap related reads for SRkgf to fill gap, [NO]")), ToolInput(tag="in_optional_output_assembly", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="(optional)      output assembly RPKM statistics, [NO]")), ToolInput(tag="in_int_ncpu_number", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="<int>           n_cpu: number of cpu for use, [8]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Soapdenovo_Trans_31Mer_Map_V0_1_0().translate("wdl", allow_empty_container=True)

