from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Soapdenovo_127Mer_Map_V0_1_0 = CommandToolBuilder(tool="SOAPdenovo_127mer_map", base_command=["SOAPdenovo-127mer", "map"], inputs=[ToolInput(tag="in_config_file_solexa", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="configFile: the config file of solexa reads")), ToolInput(tag="in_prefix_input_graph", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="inputGraph: prefix of input graph file names")), ToolInput(tag="in_optional_output_gap", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="(optional)      output gap related reads in map step for using SRkgf to fill gap, [NO]")), ToolInput(tag="in_ncpu_number_cpu", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="n_cpu: number of cpu for use, [8]")), ToolInput(tag="in_max_kmer_size", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="kmer_R2C(min 13, max 127): kmer size used for mapping read to contig, [K]")), ToolInput(tag="in_map", input_type=String(), position=0, doc=InputDocumentation(doc="map -s configFile -g inputGraph [-f] [-p n_cpu -k kmer_R2C]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Soapdenovo_127Mer_Map_V0_1_0().translate("wdl", allow_empty_container=True)

